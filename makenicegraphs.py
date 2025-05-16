
#sdds2plaindata single_bunch_ibs_4_6.sig single_bunch_ibs_4_6readable -outputMode=ascii -column='s' -column='enx'
import numpy as np
import matplotlib.pyplot as plt

file_path1 = 'single_bunch_ibs_4_6readables'
file_path2 = 'single_bunch_ibs_4_6readableeny'
file_path3 = 'single_bunch_noibs_4_6readables'
file_path4 = 'single_bunch_noibs_4_6readableeny'

try:
    data1 = np.loadtxt(file_path1)
    data2 = np.loadtxt(file_path2)
    data3 = np.loadtxt(file_path3)
    data4 = np.loadtxt(file_path4)
    #file = open(file_path, 'r')

except FileNotFoundError:
    print(f"Error: File not found at {file_path1}")
    exit()

#content = file.read()
#file.close()
#print(content)
print(data1)

plt.plot(data1, data2, label='With IBS', color='blue')
plt.plot(data3, data4,label='Without IBS',color='red')
plt.xlabel('s [m]')
plt.ylabel(r'$\epsilon_{n,y} [m]$')
plt.legend()
plt.show()

