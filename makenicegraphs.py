
#sdds2plaindata single_bunch_ibs_4_6.sig single_bunch_ibs_4_6readable -outputMode=ascii -column='s' -column='enx'
import numpy as np
import matplotlib.pyplot as plt

file_path1 = 'single_bunch_ibs_4_6readables'
file_path2 = 'single_bunch_ibs_4_6readableenx'

# Read all lines except the first
with open(file_path1, 'r') as f:
    lines = f.readlines()

# Write back all lines except the first one
with open(file_path1, 'w') as f:
    f.writelines(lines[1:])


# Read all lines except the first
with open(file_path2, 'r') as f:
    lines = f.readlines()

# Write back all lines except the first one
with open(file_path2, 'w') as f:
    f.writelines(lines[1:])

try:
    data1 = np.loadtxt(file_path1)
    data2 = np.loadtxt(file_path2)
    #file = open(file_path, 'r')

except FileNotFoundError:
    print(f"Error: File not found at {file_path1}")
    exit()

#content = file.read()
#file.close()
#print(content)
print(data1)

plt.plot(data1, data2)
plt.show()
