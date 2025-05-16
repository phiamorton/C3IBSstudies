
#sdds2plaindata single_bunch_ibs_4_6.sig single_bunch_ibs_4_6readable -outputMode=ascii -column='s' -column='enx'
import numpy as np
import matplotlib.pyplot as plt

file_pathibsys = 'single_bunch_ibs_4_6readables'
file_pathibsyeny = 'single_bunch_ibs_4_6readableeny'
file_pathnoibsys = 'single_bunch_noibs_4_6readables'
file_pathnoibsyeny = 'single_bunch_noibs_4_6readableeny'
file_pathibsy_rate='runAll_4_6s'
file_pathibsdIBSRatey ='runAll_4_6dIBSRatey'
file_pathibsdIBSRatex ='runAll_4_6dIBSRatex'

try:
    dataibsys = np.loadtxt(file_pathibsys)
    dataibsyeny = np.loadtxt(file_pathibsyeny)
    datanoibsys = np.loadtxt(file_pathnoibsys)
    datanoibsyeny = np.loadtxt(file_pathnoibsyeny)
    dataibsys_rate = np.loadtxt(file_pathibsy_rate)
    dataibsydIBSRatey = np.loadtxt(file_pathibsdIBSRatey)
    dataibsydIBSRatex = np.loadtxt(file_pathibsdIBSRatex)
    #file = open(file_path, 'r')

except FileNotFoundError:
    print(f"Error: File not found at {file_pathibsys}")
    exit()

plt.plot(dataibsys, dataibsyeny, label='With IBS', color='blue')
plt.plot(datanoibsys, datanoibsyeny,label='Without IBS',color='red')
plt.xlabel('s [m]')
plt.ylabel(r'$\epsilon_{n,y} [m]$')
plt.legend()
plt.show()

plt.plot(dataibsys_rate, dataibsydIBSRatey,label='y')
plt.plot(dataibsys_rate, dataibsydIBSRatex,label='x')
plt.xlabel('s [m]')
plt.ylabel('dIBSRate [1/(m s)]')
plt.legend()
plt.show()