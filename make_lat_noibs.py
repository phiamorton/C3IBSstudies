import numpy as np
import string, os, subprocess, sys, pathlib, shutil, argparse
import eleganttoolkit

parser = argparse.ArgumentParser(description='just my output.')

parser.add_argument('--lat_name', dest='lat_name', type=str, required=True)
parser.add_argument('--energy_GeV', dest='energy_GeV', type=float, required=True)
parser.add_argument('--filepathenergy', dest='filepathenergy', type=str, required=True)
parser.add_argument('--malign_multi', dest='malign_multi', type=bool, default=False)
parser.add_argument('--num_bunches', dest='num_bunches', type=int, default=100)
parser.add_argument('--num_particles', dest='num_particles', type=int, default=1000)
parser.add_argument('--num_cryo', dest='num_cryo', type=int, default=253) #number of cryomodules
parser.add_argument('--quad', dest='quad', type=float, default=2.303141096920776)
parser.add_argument('--phase_adv_deg', dest='phase_adv_deg', type=float, default=89.286211)
myoptions = parser.parse_args()

lat_name = myoptions.lat_name
malign_multi = myoptions.malign_multi


# quad parameters
quad_length = 0.15
quad_strength = myoptions.quad
scaling = 0.5
dx_error = 0 # 10nm to 25nm #misalignment of the structure

# rfaccel malign
dx_rf_error = 0

# beam
mycharge = 1e-9 #1nC
energy_initial = myoptions.energy_GeV *10**9 #put in energy in GeV #4.6E9 # 4.6 GeV
filepathenergy= myoptions.filepathenergy
gamma_initial = energy_initial / 510998.95
dy_malign = 0 #misalignment of the beam

# wake element
sgorder=1
sgwidth=2
wakefile='\"lwake_c3.sdds\"' #longitudunal WF
twakefile = '\"twake_c3.sdds\"' #transverese WF

phase_adv0 = np.deg2rad(myoptions.phase_adv_deg)

num_cryo = myoptions.num_cryo

# 1 raft : 2 rf acc
# 1 cryo : 4 rafts
# 1 cryo : 8 rf acc

rfphase = 5 # deg
rf_gradient = 65712332.67579263
# rf_gradient = 30E6
# gain_per_struct = rf_gradient * np.cos(np.deg2rad(rfphase))
# gain_per_raft = gain_per_struct * 8 # 70 MeV gain for 1 acc

# gain_gamma = gain_per_raft / 510998.95

energy_list = []
gamma_list = []
energy_now = energy_initial
gamma_now = gamma_initial

# watch elements for multi-bunch
num_bunch = myoptions.num_bunches
num_particles = myoptions.num_particles

watchlist = []
malign_list = []
for idx in range(1, num_bunch + 1):
    start_pid = 1+(idx-1)*num_particles
    end_pid=(idx * num_particles)
    mywatch = eleganttoolkit.Watch('wl'+str(idx).zfill(3), 'mywatch_%.3d.watch'%idx,
                                     start_pid=1+(idx-1)*num_particles, end_pid=(idx * num_particles))
    watchlist.append(mywatch)    
    malign_element = eleganttoolkit.Lattice('missa'+str(idx).zfill(3), 'malign', dy=0,
                                           start_pid=start_pid, end_pid=end_pid)
    malign_list.append(malign_element)

charge_element = eleganttoolkit.Lattice('mycharge','charge', total=mycharge)
malign_element = eleganttoolkit.Lattice('missa', 'malign', dy=dy_malign)
wake_element = eleganttoolkit.Lattice('WF', 'Wake', inputfile=wakefile,tcolumn='\"yt\"',wcolumn='W',
                                      factor=8*40*0.026242,n_bins=0,smoothing=1,sg_halfwidth=sgwidth,
                                      sg_order=sgorder,interpolate=1,BUNCHED_BEAM_MODE=1)
trwake_element = eleganttoolkit.Lattice('TWF', 'TRWake', inputfile=twakefile,tcolumn='\"yt\"',wycolumn='W',wxcolumn='W',
                                      factor=8*40*0.026242,n_bins=0,smoothing=1,sg_halfwidth=sgwidth,
                                      sg_order=sgorder,interpolate=1,BUNCHED_BEAM_MODE=1)
rfdrift_element = eleganttoolkit.Lattice('rfdrift','drif',l=0.05064)

# long range HOM wakefields
lrmodex = eleganttoolkit.Lattice('HOMX', 'FTRFMODE',filename='\"' + 'hom.sdds' + '\"',N_BINS=300,BIN_SIZE=3e-13,
                                 RAMP_PASSES=0,LONG_RANGE_ONLY=1,BUNCHED_BEAM_MODE=1,XFACTOR=0,YFACTOR=1)

bpm1 = eleganttoolkit.Lattice('m1','moni')

# the first quad with half the length of other quads
quad0_halfsize = eleganttoolkit.Quad('CY000QFHALF0',l=0.5*quad_length,k1=quad_strength,dy=0,dx=0,vsteering=1,hsteering=1)
mybl = eleganttoolkit.Beamline('mybl')
mybl.add_lattice(charge_element)
mybl.add_lattice(quad0_halfsize)

if malign_multi:
    mybl.add_lattices(malign_list)

latfile = os.path.join(myoptions.lat_name)

rf_list = []
ibs_list=[]
quad_list = []
emonitor_list = []
bpm_list = []
quad_sign = [-1, 1, -1, 1]
quad_name_list = ['qd0', 'qf0', 'qd1', 'qf1']
quad_name_last = 'cy'+str(num_cryo - 1).zfill(3) + 'qf1'
for idx in range(num_cryo):
    if idx < 40:
        rfphase = 34.639456
    elif (idx >= 40) and (idx < 104):
        rfphase = -19.755860
    elif (idx >= 104):
        rfphase = -29.900114


    gain_per_struct = rf_gradient * np.cos(np.deg2rad(rfphase))
    gain_per_raft = gain_per_struct * 2
    gain_gamma = gain_per_raft / 510998.95

    
    
    # bpm list, 4 bpms per crymodule, attached to 4 quads
    bpm_list_temp = []
    for idx_bpm in range(4):
        bpm_temp = eleganttoolkit.Lattice('cy'+str(idx).zfill(3) + 'bpm' + str(idx_bpm),'moni')
        bpm_list.append(bpm_temp)
        #bpm_list.append(IBS_element)
        bpm_list_temp.append(bpm_temp)
        #bpm_list_temp.append(IBS_element)

    # cryo
    cryomodules = []

    # rf

    rf_list_temp = []
    emonitor_list_temp = []
    for idx_rf in range(8):
        dx_rf = np.random.normal(scale=dx_rf_error)
        dy_rf = np.random.normal(scale=dx_rf_error)
        rf_temp = eleganttoolkit.Lattice('cy'+str(idx).zfill(3) + 'rf' + str(idx_rf),'rfca',l=40*0.026242,
                                  phase=(90 + rfphase),volt=rf_gradient,freq=5712000000,
                                  change_p0=1,change_t=0,end1_focus=1,
                                  end2_focus=1,body_focus_model='SRS',
                                  standing_wave=1, dx=dx_rf, dy=dy_rf)
        em_temp = eleganttoolkit.Lattice('cy'+str(idx).zfill(3) + 'em'+str(idx_rf), 'energy', match_beamline=1)

        rf_list.append(rf_temp)
        rf_list_temp.append(rf_temp)
        emonitor_list.append(em_temp)
        emonitor_list_temp.append(em_temp)

    
    #ibs_list_temp = []
    
    #for idx_ibs in range(9):
        
        #ibs_temp=eleganttoolkit.Lattice('IBSNAME_'+str(filepathenergy)+'_'+str(idx).zfill(3)+'_'+str(idx_ibs),'IBSCATTER', FILENAME='IBSoutput_'+filepathenergy+'_'+str(idx).zfill(3)+'_'+str(idx_ibs))
        #ibs_list.append(ibs_temp)
        #ibs_list_temp.append(ibs_temp)
    
    quad_list_temp = []
    
    for idx_quad in range(4):
        energy_now += gain_per_raft
        gamma_now += gain_gamma
    
        # calculate required phase adv
        gamma_ratio = gamma_initial / gamma_now
        phase_adv = 2 * np.arctan(np.tan(phase_adv0/2) * (gamma_ratio)**scaling )
    
        quad_strength_now = np.sin(phase_adv/2) / np.sin(phase_adv0/2) * quad_strength
        quad_strength_now = quad_strength_now*quad_sign[idx_quad]

        quad_dy = np.random.normal(scale=dx_error)
        quad_dx = np.random.normal(scale=dx_error)
        quad_name_now = 'cy'+str(idx).zfill(3) + quad_name_list[idx_quad]
        if quad_name_now == quad_name_last:
            myq_temp = eleganttoolkit.Quad(quad_name_now,l=quad_length, k1=quad_strength_now, dy=quad_dy,dx=quad_dx,vsteering=0,hsteering=0)
        else:
            myq_temp = eleganttoolkit.Quad(quad_name_now,l=quad_length, k1=quad_strength_now, dy=quad_dy,dx=quad_dx,vsteering=1,hsteering=1)
        quad_list.append(myq_temp)
        quad_list_temp.append(myq_temp)


    cryomodules = [rfdrift_element,
                   rf_list_temp[0],  emonitor_list_temp[0], rf_list_temp[1],  emonitor_list_temp[1],
                   bpm_list_temp[0], quad_list_temp[0],
                   rfdrift_element, 
                   rf_list_temp[2],  emonitor_list_temp[2], rf_list_temp[3],  emonitor_list_temp[3],
                   bpm_list_temp[1], quad_list_temp[1],
                   rfdrift_element, 
                   rf_list_temp[4],  emonitor_list_temp[4], rf_list_temp[5], emonitor_list_temp[5],
                   bpm_list_temp[2], quad_list_temp[2],
                   rfdrift_element, 
                   rf_list_temp[6],  emonitor_list_temp[6], rf_list_temp[7],  emonitor_list_temp[7],
                   bpm_list_temp[3], quad_list_temp[3], 
                  wake_element, trwake_element ]


    mybl.add_lattices(cryomodules)

# mybl.add_lattices(watchlist)

# zero length beamline just for beam generation
zerobl = eleganttoolkit.Beamline('zero')
zerobl.add_lattice(bpm1)


with open(latfile, 'w') as myfile:
    #print(myfile)
    print(charge_element, file=myfile)
    print(malign_element, file=myfile)
    print(wake_element, file=myfile)
    print(trwake_element, file=myfile)
    print(rfdrift_element, file=myfile)
    print(bpm1, file=myfile)
    print(lrmodex, file=myfile)

    for each in emonitor_list:
        print(each, file=myfile)
    print(quad0_halfsize, file=myfile)
    for each in quad_list:
        print(each, file=myfile)
    for each in rf_list:
        print(each, file=myfile)
    #for each in ibs_list:
        #print(each, file=myfile)
    for each in bpm_list:
        print(each, file=myfile)
    if malign_multi:
        for each in watchlist:
            print(each, file=myfile)
        for each in malign_list:
            print(each, file=myfile) 

    print(file=myfile)
    print(mybl, file=myfile)
    print(zerobl, file=myfile)
