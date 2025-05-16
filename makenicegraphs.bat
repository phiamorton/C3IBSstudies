sdds2plaindata single_bunch_ibs_4_6.sig single_bunch_ibs_4_6readables -outputMode=ascii -column='s' 
sdds2plaindata single_bunch_ibs_4_6.sig single_bunch_ibs_4_6readableeny -outputMode=ascii -column='eny' 
sdds2plaindata single_bunch_noibs_4_6.sig single_bunch_noibs_4_6readables -outputMode=ascii -column='s' 
sdds2plaindata single_bunch_noibs_4_6.sig single_bunch_noibs_4_6readableeny -outputMode=ascii -column='eny'
ex -s -c '1d1|x' single_bunch_ibs_4_6readableeny
ex -s -c '1d1|x' single_bunch_ibs_4_6readables
ex -s -c '1d1|x' single_bunch_noibs_4_6readableeny
ex -s -c '1d1|x' single_bunch_noibs_4_6readables
/usr/bin/python3 makenicegraphs.py 