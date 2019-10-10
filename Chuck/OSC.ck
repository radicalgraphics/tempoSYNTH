//Create an OscRecv object:
OscRecv orec;
//Tell the OscRecv object the port:
6161 => orec.port;
//Tell the OscRecv object to start listening for OSC messages on that port:
orec.listen(); 


