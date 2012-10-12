/*//////////////////////////////////////////////////////////////////////

BLACKBELT _
by Evan Hahn (evanhahn.com)

//////////////////////////////////////////////////////////////////////*/

public class Blackbelt {

	// Utility functions
	// ===================================================================

	// None yet!

	// Music stuff
	// ===================================================================

	// Variables and their defaults.
	120.000 => float bpm;

	// Get times based on the BPM.
	fun dur eighthNote()  { return (0.5 * (60 / bpm))::second; }
	fun dur quarterNote() { return (1   * (60 / bpm))::second; }
	fun dur halfNote()    { return (2   * (60 / bpm))::second; }
	fun dur fullNote()    { return (4   * (60 / bpm))::second; }

	// Declare piano key frequencies. Matches up with this table:
	// <http://en.wikipedia.org/wiki/Piano_key_frequencies>
	[ 0.0, 27.5000, 29.1352, 30.8677, 32.7032, 36.6478, 36.7081, 38.8909, 41.2034, 43.7535, 46.2493, 48.9994, 51.9131, 55.0000, 58.2705, 61.7354, 65.4064, 69.2957, 73.4162, 77.7817, 82.4069, 87.7071, 92.4986, 97.9989, 103.826, 110.000, 116.541, 123.471, 130.813, 138.591, 146.832, 155.563, 164.814, 174.614, 184.997, 195.998, 207.652, 220.000, 233.082, 246.942, 261.626, 277.183, 293.665, 311.127, 329.628, 349.228, 369.994, 391.995, 415.305, 440.000, 466.164, 493.883, 523.251, 554.365, 587.330, 622.254, 659.255, 698.456, 739.989, 783.991, 830.609, 880.000, 932.328, 987.767, 1046.50, 1108.73, 1174.66, 1244.51, 1318.51, 1396.91, 1479.98, 1567.98, 1661.22, 1760.00, 1864.66, 1975.53, 2093.00, 2217.46, 2349.32, 2489.02, 2637.02, 2793.83, 2959.96, 3135.96, 3322.44, 3520.00, 3729.31, 3951.07, 4186.01 ]
	@=> float PIANO_NOTES[];

	// Get a piano note.
	fun float piano( int note ) {
		return PIANO_NOTES[note];
	}

	// _.startTrack() makes sure the program stays alive until
	// calling _.stopTrack(). Doing this with multiple tracks
	// is good.
	0 => int trackCount;
	fun void startTrack() {
		trackCount++;
	}
	fun void stopTrack() {
		trackCount--;
	}

}
