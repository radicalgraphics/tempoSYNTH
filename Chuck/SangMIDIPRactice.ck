
MidiOut mout;
mout.open(0);

0.1::second => dur interval;
    
while(true)
{
    MidiMsg msg;
    
    0x90 => msg.data1;
    67 => msg.data2;
    127 => msg.data3;
    mout.send(msg);

    interval => now;
    
    0x80 => msg.data1;
    67 => msg.data2;
    0 => msg.data3;
    mout.send(msg);
   
    interval => now;    
    
    0x91 => msg.data1;
    76 => msg.data2;
    127 => msg.data3;
    mout.send(msg);
    
    interval => now;
    
        
    0x81 => msg.data1;
    76 => msg.data2;
    0 => msg.data3;
    mout.send(msg);
    
    interval => now;
    

}
