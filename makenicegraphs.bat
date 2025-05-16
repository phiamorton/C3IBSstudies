#4.6, 250
sdds2plaindata single_bunch_ibs_4_6.sig single_bunch_ibs_4_6readables -outputMode=ascii -column='s' 
sdds2plaindata single_bunch_ibs_4_6.sig single_bunch_ibs_4_6readableeny -outputMode=ascii -column='eny' 
sdds2plaindata single_bunch_noibs_4_6.sig single_bunch_noibs_4_6readables -outputMode=ascii -column='s' 
sdds2plaindata single_bunch_noibs_4_6.sig single_bunch_noibs_4_6readableeny -outputMode=ascii -column='eny'
sdds2plaindata runAll_4_6.ibs runAll_4_6s -outputMode=ascii -column='s'
sdds2plaindata runAll_4_6.ibs runAll_4_6dIBSRatey -outputMode=ascii -column='dIBSRatey'
sdds2plaindata runAll_4_6.ibs runAll_4_6dIBSRatex -outputMode=ascii -column='dIBSRatex'
ex -s -c '1d1|x' single_bunch_ibs_4_6readableeny
ex -s -c '1d1|x' single_bunch_ibs_4_6readables
ex -s -c '1d1|x' single_bunch_noibs_4_6readableeny
ex -s -c '1d1|x' single_bunch_noibs_4_6readables
ex -s -c '1d1|x' runAll_4_6dIBSRatey
ex -s -c '1d1|x' runAll_4_6dIBSRatex
ex -s -c '1d1|x' runAll_4_6s

#4.6, 550
sdds2plaindata 550Gev/single_bunch_ibs_4_6.sig 550Gev/single_bunch_ibs_4_6readables -outputMode=ascii -column='s' 
sdds2plaindata 550Gev/single_bunch_ibs_4_6.sig 550Gev/single_bunch_ibs_4_6readableeny -outputMode=ascii -column='eny' 
sdds2plaindata 550Gev/single_bunch_noibs_4_6.sig 550Gev/single_bunch_noibs_4_6readables -outputMode=ascii -column='s' 
sdds2plaindata 550Gev/single_bunch_noibs_4_6.sig 550Gev/single_bunch_noibs_4_6readableeny -outputMode=ascii -column='eny'
sdds2plaindata 550Gev/runAll_4_6.ibs 550Gev/runAll_4_6s -outputMode=ascii -column='s'
sdds2plaindata 550Gev/runAll_4_6.ibs 550Gev/runAll_4_6dIBSRatey -outputMode=ascii -column='dIBSRatey'
sdds2plaindata 550Gev/runAll_4_6.ibs 550Gev/runAll_4_6dIBSRatex -outputMode=ascii -column='dIBSRatex'
ex -s -c '1d1|x' 550Gev/single_bunch_ibs_4_6readableeny
ex -s -c '1d1|x' 550Gev/single_bunch_ibs_4_6readables
ex -s -c '1d1|x' 550Gev/single_bunch_noibs_4_6readableeny
ex -s -c '1d1|x' 550Gev/single_bunch_noibs_4_6readables
ex -s -c '1d1|x' 550Gev/runAll_4_6dIBSRatey
ex -s -c '1d1|x' 550Gev/runAll_4_6dIBSRatex
ex -s -c '1d1|x' 550Gev/runAll_4_6s

#10, 250
sdds2plaindata single_bunch_ibs_10.sig single_bunch_ibsreadables10 -outputMode=ascii -column='s' 
sdds2plaindata single_bunch_ibs_10.sig single_bunch_ibsreadableeny10 -outputMode=ascii -column='eny' 
sdds2plaindata single_bunch_noibs_10.sig single_bunch_noibsreadables10 -outputMode=ascii -column='s' 
sdds2plaindata single_bunch_noibs_10.sig single_bunch_noibsreadableeny10 -outputMode=ascii -column='eny'
sdds2plaindata runAll_10.ibs runAll_10 -outputMode=ascii -column='s'
sdds2plaindata runAll_10.ibs runAll_dIBSRatey10 -outputMode=ascii -column='dIBSRatey'
sdds2plaindata runAll_10.ibs runAll_dIBSRatex10 -outputMode=ascii -column='dIBSRatex'
ex -s -c '1d1|x' single_bunch_ibsreadableeny10
ex -s -c '1d1|x' single_bunch_ibsreadables10
ex -s -c '1d1|x' single_bunch_noibsreadableeny10
ex -s -c '1d1|x' single_bunch_noibsreadables10
ex -s -c '1d1|x' runAll_dIBSRatey10
ex -s -c '1d1|x' runAll_dIBSRatex10
ex -s -c '1d1|x' runAll_10

#10, 550
sdds2plaindata 550Gev/single_bunch_ibs_10.sig 550Gev/single_bunch_ibsreadables10 -outputMode=ascii -column='s' 
sdds2plaindata 550Gev/single_bunch_ibs_10.sig 550Gev/single_bunch_ibsreadableeny10 -outputMode=ascii -column='eny' 
sdds2plaindata 550Gev/single_bunch_noibs_10.sig 550Gev/single_bunch_noibsreadables10 -outputMode=ascii -column='s' 
sdds2plaindata 550Gev/single_bunch_noibs_10.sig 550Gev/single_bunch_noibsreadableeny10 -outputMode=ascii -column='eny'
sdds2plaindata 550Gev/runAll_10.ibs 550Gev/runAll_10 -outputMode=ascii -column='s'
sdds2plaindata 550Gev/runAll_10.ibs 550Gev/runAll_dIBSRatey10 -outputMode=ascii -column='dIBSRatey'
sdds2plaindata 550Gev/runAll_10.ibs 550Gev/runAll_dIBSRatex10 -outputMode=ascii -column='dIBSRatex'
ex -s -c '1d1|x' 550Gev/single_bunch_ibsreadableeny10
ex -s -c '1d1|x' 550Gev/single_bunch_ibsreadables10
ex -s -c '1d1|x' 550Gev/single_bunch_noibsreadableeny10
ex -s -c '1d1|x' 550Gev/single_bunch_noibsreadables10
ex -s -c '1d1|x' 550Gev/runAll_dIBSRatey10
ex -s -c '1d1|x' 550Gev/runAll_dIBSRatex10
ex -s -c '1d1|x' 550Gev/runAll_10


/usr/bin/python3 makenicegraphs.py 