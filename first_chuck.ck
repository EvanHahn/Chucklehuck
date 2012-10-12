// Initialize Blackbelt.
Blackbelt _;

// 140 beats per minute.
140.0 => _.bpm;

// Generate a random frequency every d.
fun void randoms( dur d ) {
	_.startTrack();
	SinOsc s => dac;
	while ( true ) {
		Math.random2(1, 87) => int index;
		_.piano(index) => s.freq;
		d => now;
	}
	_.stopTrack();
}

spork ~ randoms(_.eighthNote());
spork ~ randoms(_.quarterNote());
spork ~ randoms(_.halfNote());
spork ~ randoms(_.fullNote());

while ( true ) {
	1::second => now;
}
