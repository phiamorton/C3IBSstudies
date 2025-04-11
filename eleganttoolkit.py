import numpy as np
import subprocess, io
import pandas as pd

def import_numericaldata(filename, column='s'):
    """
    Import any numerical data from ELEGANT SDDS file.
    """
    if type(column) is list:
        collist = ','.join(column)
        sddsoutput = subprocess.run(['sdds2stream', filename,
                                 '-col=' + collist],
                                stdout=subprocess.PIPE)
        myarray = np.fromstring(sddsoutput.stdout, sep='\n')
        myshape = (int(myarray.size / len(column)), len(column))
    
        return myarray.reshape(myshape)
    else:
        sddsoutput = subprocess.run(['sdds2stream', filename,
                                 '-col=' + column],
                                stdout=subprocess.PIPE)
        return np.fromstring(sddsoutput.stdout, sep='\n')
    
def import_strdata(filename, column='ElementType'):
    """
    Import any string data from ELEGANT SDDS file.
    """
    sddsoutput = subprocess.run(['sdds2stream', filename,
                                 '-col=' + column],
                                stdout=subprocess.PIPE)
    return [x.decode("utf-8") for x in sddsoutput.stdout.split(b'\n')[:-1]]

def load_magnets(filename, magtypename):
    """
    Load ELEGANT SDDS magnets file and return quadrupole.
    """
    mag = import_numericaldata(filename, column='Profile')
    magtype = import_strdata(filename)
    
    for idx, each in enumerate(magtype):
        if magtypename not in each:
            mag[idx] = 0
        
    return mag    

def load_elegantbeam(filename):
    collist = ['x', 'xp', 'y', 'yp', 't', 'p']
    sddsoutput = subprocess.run(['sdds2stream', filename,
                                 '-col=' + ','.join(collist)],
                                stdout=subprocess.PIPE)
    myarray = np.fromstring(sddsoutput.stdout, sep='\n')
    myshape = (int(myarray.size / len(collist)), len(collist))
    
    return myarray.reshape(myshape)

def import_datacsv(filename):
    sddsoutput = subprocess.run(['sddsprintout', '-col=*', filename, '-spreadsheet=csv'],
                            stdout=subprocess.PIPE)
    
    return pd.read_csv(io.StringIO(sddsoutput.stdout.decode('utf-8')))

def import_datacsv_sdds2plaindata(filename):
    sddsoutput = subprocess.run(['sddsprintout', '-col=*', filename, '-spreadsheet=csv'],
                            stdout=subprocess.PIPE)
    
    return pd.read_csv(io.StringIO(sddsoutput.stdout.decode('utf-8')))

class Lattice:
    def __init__(self, name, lattice_name, **kwargs):
        self.name = name.upper()
        self.lattice_name = lattice_name.upper()
        self.lattice_param = {}
        for each in kwargs:
            self.lattice_param[each.upper()] = kwargs[each]
            
    def __str__(self):
        lattice_str = f'{self.name}: {self.lattice_name}'
        for each in self.lattice_param.keys():
            lattice_str += f',{each}={self.lattice_param.get(each)}'
            
        return lattice_str
    
class Beamline:
    def __init__(self, name):
        self.name = name.upper()
        self.beamline = []
        
    def add_lattice(self, lattice):
        self.beamline.append(lattice)
        
    def add_lattices(self, list_of_lattices):
        self.beamline += list_of_lattices
        
    def __str__(self):
        bl_str = f'{self.name}: LINE=('
        
        temp_str = ''
        beamline_length = len(self.beamline[:-1])
        for idx, each in enumerate(self.beamline[:-1]):
            temp_str += each.name
            temp_str += ','
            
            if len(temp_str) > 70:
                bl_str += temp_str
                bl_str += '&\n'
                temp_str =''
            
        bl_str += temp_str
        bl_str += '&\n'
        temp_str =''
        bl_str += f'{self.beamline[-1].name})'
        
        return bl_str
    
class Quad(Lattice):
    def __init__(self, name, **kwargs):
        super().__init__(name, 'QUAD')
        self.lattice_param = {}
        for each in kwargs:
            self.lattice_param[each.upper()] = kwargs[each]
            
    def __str__(self):
        lattice_str = f'{self.name}: {self.lattice_name}'
        for each in self.lattice_param.keys():
            lattice_str += f',{each}={self.lattice_param.get(each)}'
            
        return lattice_str
    
class Watch(Lattice):
    def __init__(self, name, watchfile, **kwargs):
        super().__init__(name, 'WATCH')
        self.lattice_param = {}
        self.lattice_param['FILENAME'] = '"' + watchfile + '"'
        for each in kwargs:
            self.lattice_param[each.upper()] = kwargs[each]
            
    def __str__(self):
        lattice_str = f'{self.name}: {self.lattice_name}'
        for each in self.lattice_param.keys():
            lattice_str += f',{each}={self.lattice_param.get(each)}'
            
        return lattice_str
    
def sddsanalyzebeam2df(mypath):
    sddsanalyze = subprocess.Popen(['sddsanalyzebeam', mypath, '-pipe=out'],
                                stdout=subprocess.PIPE)

    sddsresult = subprocess.Popen(['sddsprintout', '-col=*', '-spreadsheet=csv', '-pipe=in,out'],
                                stdout=subprocess.PIPE, stdin=sddsanalyze.stdout)
    
    lala, _ = sddsresult.communicate()
    
    return pd.read_csv(io.StringIO(lala.decode('utf-8')))