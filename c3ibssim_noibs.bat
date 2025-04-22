energyinGeV=4.6
filepathenergy="4_6" #no decimals, replace with _ 
#echo MYBL_noibs_${filepathenergy}
/usr/bin/python3 make_lat_noibs.py --lat_name=MYBL_noibs_${filepathenergy} --energy_GeV=${energyinGeV} --filepathenergy=${filepathenergy}
touch single_bunch_noibs_${filepathenergy}.ele
/usr/bin/python3 make_ele_file_noibs.py --energy_GeV=${energyinGeV} --filepathenergy=${filepathenergy}
elegant single_bunch_noibs_${filepathenergy}.ele #must match beam energy used in make lattice
sddsplot -col=s,eny single_bunch_noibs_${filepathenergy}.sig -graph=line,type=0,vary=subtype -legend=spec=NoIBS -col=s,eny single_bunch_ibs_${filepathenergy}.sig -graph=line,type=1,vary=subtype -legend=spec=IBS
sddsprintout -param=eny single_bunch_noibs_${filepathenergy}.fin
sddsprintout -param=eny single_bunch_ibs_${filepathenergy}.fin