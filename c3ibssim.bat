energyinGeV=4.6
filepathenergy="4_6" #no decimals, replace with _ 
echo MYBL_${filepathenergy}
/usr/bin/python3 make_lat.py --lat_name=MYBL_${filepathenergy} --energy_GeV=${energyinGeV} --filepathenergy=filepathenergy
#elegant single_bunch_ibs_${filepathenergy}.ele #must match beam energy used in make lattice
#sddscombine IBSOUTPUT_${filepathenergy}* -merge -pipe=out | sddssort -pipe=in -column=s runAll_${filepathenergy}.ibs
#rm IBSOUTPUT_${filepathenergy}*
#sddsplot -column=s,dIBSRatey runAll_${filepathenergy}.ibs -separate
