python make_lat_4_6.py --lat_name=MYBL_4_6
elegant single_bunch_ibs_4_6.ele
sddscombine IBSoutput_4_6* -merge -pipe=out | sddssort -pipe=in -column=s runAll_4_6.ibs
sddsplot -column=s,dIBSRatey runAll_4_6.ibs -separate
