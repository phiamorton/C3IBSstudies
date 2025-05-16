
#sdds2plaindata single_bunch_ibs_4_6.sig single_bunch_ibs_4_6readable -outputMode=ascii -column='s' -column='enx'
import numpy as np
import matplotlib.pyplot as plt

E_init=10
#E_init=4.6

if E_init==4.6:
    file_pathibsys = 'single_bunch_ibs_4_6readables'
    file_pathibsyeny = 'single_bunch_ibs_4_6readableeny'
    file_pathnoibsys = 'single_bunch_noibs_4_6readables'
    file_pathnoibsyeny = 'single_bunch_noibs_4_6readableeny'
    file_pathibsy_rate='runAll_4_6s'
    file_pathibsdIBSRatey ='runAll_4_6dIBSRatey'
    file_pathibsdIBSRatex ='runAll_4_6dIBSRatex'

    file_pathibsys550 = '550Gev/single_bunch_ibs_4_6readables'
    file_pathibsyeny550 = '550Gev/single_bunch_ibs_4_6readableeny'
    file_pathnoibsys550 = '550Gev/single_bunch_noibs_4_6readables'
    file_pathnoibsyeny550 = '550Gev/single_bunch_noibs_4_6readableeny'
    file_pathibsy_rate550='550Gev/runAll_4_6s'
    file_pathibsdIBSRatey550 ='550Gev/runAll_4_6dIBSRatey'
    file_pathibsdIBSRatex550 ='550Gev/runAll_4_6dIBSRatex'
if E_init==10:
    file_pathibsys = 'single_bunch_ibsreadables10'
    file_pathibsyeny = 'single_bunch_ibsreadableeny10'
    file_pathnoibsys = 'single_bunch_noibsreadables10'
    file_pathnoibsyeny = 'single_bunch_noibsreadableeny10'
    file_pathibsy_rate='runAll_10'
    file_pathibsdIBSRatey ='runAll_dIBSRatey10'
    file_pathibsdIBSRatex ='runAll_dIBSRatex10'

    file_pathibsys550 = '550Gev/single_bunch_ibsreadables10'
    file_pathibsyeny550 = '550Gev/single_bunch_ibsreadableeny10'
    file_pathnoibsys550 = '550Gev/single_bunch_noibsreadables10'
    file_pathnoibsyeny550 = '550Gev/single_bunch_noibsreadableeny10'
    file_pathibsy_rate550='550Gev/runAll_10'
    file_pathibsdIBSRatey550 ='550Gev/runAll_dIBSRatey10'
    file_pathibsdIBSRatex550 ='550Gev/runAll_dIBSRatex10'

try:
    dataibsys = np.loadtxt(file_pathibsys)
    dataibsyeny = np.loadtxt(file_pathibsyeny)
    datanoibsys = np.loadtxt(file_pathnoibsys)
    datanoibsyeny = np.loadtxt(file_pathnoibsyeny)
    dataibsys_rate = np.loadtxt(file_pathibsy_rate)
    dataibsydIBSRatey = np.loadtxt(file_pathibsdIBSRatey)
    dataibsydIBSRatex = np.loadtxt(file_pathibsdIBSRatex)

    dataibsys550 = np.loadtxt(file_pathibsys550)
    dataibsyeny550 = np.loadtxt(file_pathibsyeny550)
    datanoibsys550 = np.loadtxt(file_pathnoibsys550)
    datanoibsyeny550 = np.loadtxt(file_pathnoibsyeny550)
    dataibsys_rate550 = np.loadtxt(file_pathibsy_rate550)
    dataibsydIBSRatey550 = np.loadtxt(file_pathibsdIBSRatey550)
    dataibsydIBSRatex550 = np.loadtxt(file_pathibsdIBSRatex550)
    #file = open(file_path, 'r')

except FileNotFoundError:
    print(f"Error: File not found at {file_pathibsys}")
    exit()

#250 emit
plt.plot(dataibsys, dataibsyeny, label='With IBS', color='blue')
plt.plot(datanoibsys, datanoibsyeny,label='Without IBS',color='red')
plt.xlabel('s [m]')
plt.ylabel(r'$\epsilon_{n,y} [m]$')
plt.legend()
if E_init==4.6:
    plt.title('250 GeV CoM starting at 4.6 GeV case')
if E_init==10:
    plt.title('250 GeV CoM starting at 10 GeV case')
plt.show()

#550emit
plt.plot(dataibsys550, dataibsyeny550, label='With IBS', color='blue')
plt.plot(datanoibsys550, datanoibsyeny550,label='Without IBS',color='red')
plt.xlabel('s [m]')
plt.ylabel(r'$\epsilon_{n,y} [m]$')
if E_init==4.6:
    plt.title('550 GeV CoM starting at 4.6 GeV case')
if E_init==10:
    plt.title('550 GeV CoM starting at 10 GeV case')
plt.legend()
plt.show()

#250 rate
plt.plot(dataibsys_rate, dataibsydIBSRatey,label='y')
plt.plot(dataibsys_rate, dataibsydIBSRatex,label='x')
plt.xlabel('s [m]')
plt.ylabel('dIBSRate [1/(m s)]')
plt.legend()
if E_init==4.6:
    plt.title('250 GeV CoM starting at 4.6 GeV case')
if E_init==10:
    plt.title('250 GeV CoM starting at 10 GeV case')
plt.show()

#550 rate
plt.plot(dataibsys_rate550, dataibsydIBSRatey550,label='y')
plt.plot(dataibsys_rate550, dataibsydIBSRatex550,label='x')
plt.xlabel('s [m]')
plt.ylabel('dIBSRate [1/(m s)]')
plt.legend()
if E_init==4.6:
    plt.title('550 GeV CoM starting at 4.6 GeV case')
if E_init==10:
    plt.title('550 GeV CoM starting at 10 GeV case')
plt.show()