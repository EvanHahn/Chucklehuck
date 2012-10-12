Blackbelt _;

120.0 => _.bpm;

fun void bachCrabForward() {

	SinOsc instrument => dac;

	// Measure 1
	_.piano( "D", 0, 4 ) => instrument.freq;
	_.halfNote() => now;
	_.piano( "F", 0, 4 ) => instrument.freq;
	_.halfNote() => now;

	// Measure 2
	_.piano( "A", 0, 4 ) => instrument.freq;
	_.halfNote() => now;
	_.piano( "B", -1, 4 ) => instrument.freq;
	_.halfNote() => now;

	// Measure 3
	_.piano( "C", 1, 4 ) => instrument.freq;
	_.halfNote() => now;
	0.0 => instrument.freq;
	_.quarterNote() => now;
	_.piano( "A", 0, 4 ) => instrument.freq;
	_.quarterNote() => now;

	// Measure 4
	_.piano( "A", 0, 4 ) => instrument.freq;
	_.quarterNote() => now;
	_.piano( "A", -1, 4 ) => instrument.freq;
	_.halfNote() => now;
	_.piano( "G", 0, 4 ) => instrument.freq;
	_.quarterNote() => now;

	// Measure 5
	_.piano( "G", 0, 4 ) => instrument.freq;
	_.quarterNote() => now;
	_.piano( "F", 1, 4 ) => instrument.freq;
	_.halfNote() => now;
	_.piano( "F", 0, 4 ) => instrument.freq;
	_.quarterNote() => now;

	// Measure 6
	_.piano( "F", 0, 4 ) => instrument.freq;
	_.quarterNote() => now;
	_.piano( "E", 0, 4 ) => instrument.freq;
	_.quarterNote() => now;
	_.piano( "E", -1, 4 ) => instrument.freq;
	_.quarterNote() => now;
	_.piano( "D", 0, 4 ) => instrument.freq;
	_.quarterNote() => now;

}

fun void bachCrabBackward() {

	SinOsc instrument => dac;

	// Measure 1
	_.piano( "D", 0, 4 ) => instrument.freq;
	_.quarterNote() => now;
	_.piano( "F", 0, 4 ) => instrument.freq;
	_.quarterNote() => now;
	_.piano( "A", 0, 4 ) => instrument.freq;
	_.quarterNote() => now;
	_.piano( "D", 0, 5 ) => instrument.freq;
	_.quarterNote() => now;

	// Measure 2
	_.piano( "C", 1, 5 ) => instrument.freq;
	_.eighthNote() => now;
	_.piano( "D", 0, 5 ) => instrument.freq;
	_.eighthNote() => now;
	_.piano( "E", 0, 5 ) => instrument.freq;
	_.eighthNote() => now;
	_.piano( "F", 0, 5 ) => instrument.freq;
	_.eighthNote() => now;
	_.piano( "G", 0, 5 ) => instrument.freq;
	_.eighthNote() => now;
	_.piano( "F", 0, 5 ) => instrument.freq;
	_.eighthNote() => now;
	_.piano( "E", 0, 5 ) => instrument.freq;
	_.eighthNote() => now;
	_.piano( "D", 0, 5 ) => instrument.freq;
	_.eighthNote() => now;

	// Measure 3
	_.piano( "E", 0, 5 ) => instrument.freq;
	_.eighthNote() => now;
	_.piano( "A", 0, 5 ) => instrument.freq;
	_.eighthNote() => now;
	_.piano( "E", 0, 5 ) => instrument.freq;
	_.eighthNote() => now;
	_.piano( "G", 0, 5 ) => instrument.freq;
	_.eighthNote() => now;
	_.piano( "F", 0, 5 ) => instrument.freq;
	_.eighthNote() => now;
	_.piano( "E", 0, 5 ) => instrument.freq;
	_.eighthNote() => now;
	_.piano( "D", 0, 5 ) => instrument.freq;
	_.eighthNote() => now;
	_.piano( "C", 1, 5 ) => instrument.freq;
	_.eighthNote() => now;

}

spork ~ bachCrabForward();
spork ~ bachCrabBackward();

(18 * (_.fullNote())) => now;
