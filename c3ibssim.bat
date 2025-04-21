python make_lat_4_6.py --lat_name=MYBL_4_6
elegant single_bunch_ibs_4_6.ele
sddscombine IBSOUTPUT_4_6* -merge -pipe=out | sddssort -pipe=in -column=s runAll_4_6.ibs
rm IBSOUTPUT_4_6*
sddsplot -column=s,dIBSRatey runAll_4_6.ibs -separate
