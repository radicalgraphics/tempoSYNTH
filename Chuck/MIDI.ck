MidiOut mout;
MidiMsg msg;
// check if port is open
if( !mout.open( 0 ) ) me.exit();

while(true){
// fill the message with data
144 => msg.data1;
60 => msg.data2;
100 => msg.data3;
// bugs after this point can be sent
// to the manufacturer of your synth
mout.send( msg );
<<<msg.data1,msg.data2,msg.data3,now>>>;
 1::second => now;
}