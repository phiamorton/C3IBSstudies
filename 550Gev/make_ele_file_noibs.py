import numpy as np
import string, os, subprocess, sys, pathlib, shutil, argparse
import eleganttoolkit

parser = argparse.ArgumentParser(description='just my output.')
parser.add_argument('--energy_GeV', dest='energy_GeV', type=float, required=True)
parser.add_argument('--filepathenergy', dest='filepathenergy', type=str, required=True)
myoptions = parser.parse_args()

energyGeV = myoptions.energy_GeV  #put in energy in GeV 
filepathenergy= myoptions.filepathenergy
energyMeV=str(round(energyGeV*1000, None))
#print(energyMeV)

filename = str('single_bunch_noibs_'+filepathenergy+'.ele')

with open(filename, 'w') as myfile:
    print(str("&run_setup"), file=myfile)
    print(str('\tlattice="MYBL_noibs_'+filepathenergy+'"'), file=myfile)
    print(
        '\tuse_beamline="MYBL"'
        "\n\tdefault_order = 3", file=myfile)
    
    print(str('p_central_mev='+energyMeV), file=myfile)
    print(      
    str("centroid=%s.cen,"
        "\nsigma=%s.sig"
        "\noutput=%s.out"
        "\nprint_statistics=1"
        "\nfinal=%s.fin"
        "\n&end"
        ), file=myfile)
    print(str("\n&run_control"
        "\n&end"
        "\n"
        "\n&twiss_output"
                "\n\tmatched=0"
        "\nbeta_x=8.796283"
        "\nalpha_x=0"
        "\neta_x=0"
        "\netap_x=0"
        "\nbeta_y=3.987276"
        "\nalpha_y=0"
        "\neta_y=0"
        "\netap_y=0"
        "\n&end"
        "\n"
        "\n&bunched_beam"
                "\n\tn_particles_per_bunch = 100000,"
                "\n\tone_random_bunch=0,"
                "\n\temit_nx = 7.75e-7,"
                "\n\temit_ny = 1e-8,"
                "\n\tsigma_dp = 0.015,"
                "\n\tsigma_s = 1.0e-04,"
                "\n\tenforce_rms_values[0] = 7,7,7,"
                '\n\tdistribution_type[0] = 3*"gaussian",'
                "\n\tdistribution_cutoff[0] = 3*3,"
                "\n\tsymmetrize = 1,"
                "\n\thalton_sequence[0]=3*1,"
                "\n\toptimized_halton=1,"
                "\n\trandomize_order[0] = 2, 2, 2,"
                "\n\tbunch = %s.bun,"
                "\n\tuse_twiss_command_values=1,"
        "\n&end"
        "\n"
        "\n&track"
        "\n&end"), file=myfile)
