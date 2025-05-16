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
/usr/bin/python3 makenicegraphs.py 