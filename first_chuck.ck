// Initialize Blackbelt.
Blackbelt _;

// 140 beats per minute.
140.0 => _.bpm;

// Generate random shit.
fun void go() {
	SinOsc s => dac;
	while ( true ) {
		_.quarterNote() => now;
		Math.random2f(30.0, 1000.0) => s.freq;
	}
}

spork ~ go();
spork ~ go();

while ( true )
	1::second => now;
