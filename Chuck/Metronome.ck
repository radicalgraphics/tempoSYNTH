// host name and port
"172.30.33.120" => string hostname;
6969 => int port;

// get command line
if( me.args() ) me.arg(0) => hostname;
if( me.args() > 1 ) me.arg(1) => Std.atoi => port;

// send object
OscOut xmit;

// aim the transmitter
xmit.dest( hostname, port );

Impulse imp => dac;

16=>int countTo;
0 => int counter;


//tempo
150 => float bpm;
1::minute/bpm => dur metrotime;
metrotime => dur timeToNext;



spork ~ keylistener();

while(true) {
   
    if(timeToNext <= 0::ms) {
        // start the message...
        xmit.start( "/metro" );
        counter => xmit.add;
        xmit.send();
        <<<counter>>>;
        1 => imp.next;
        metrotime => timeToNext;
        counter+1 => counter;
        if(counter == countTo) 0 => counter;
    }
    
    1::ms => now;
    timeToNext - 1::ms => timeToNext;  
}


fun void keylistener() {
    
    Hid hi;
    HidMsg msg;
    
    hi.openKeyboard( 1 );
        
    //success!
    <<<"keyboard " + hi.name() + " ready">>>;
    
    //make a loop that listens for the keyboard
    while ( true ) {
        hi => now;
        while( hi.recv (msg) ) {
             
            if(msg.isButtonDown() ) {
                <<<"down: ", msg.ascii>>>;
                if(msg.ascii == 32) 0 => counter;
            }
        }
    }
}