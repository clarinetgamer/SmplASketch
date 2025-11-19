Oscil       wave;
Oscil       lfo;
Wavetable   wavtable;
Wavetable   lfotable;
Constant    lfoAdd;
class SmplInstrument implements Instrument
{

  ADSR adsr;
  // constructor
  SmplInstrument(float[] wavCapture, float[] lfoCapture, ADSR env, float hz)
  {
    adsr = env;
    // create oscillators of wavtable from float[]
    wavtable = new Wavetable(wavCapture);
    wave  = new Oscil( hz, 0.5f, wavtable );

    if (lfoOn) {
      if (fmOn) {
        lfotable = new Wavetable(lfoCapture);
        float freq = map(lfoMods[0], 0.0, 1.0, 0.05, 5.0);
        float amp = map(lfoMods[2], 0.0, 1.0, 000.0, 400.0);
        lfoAdd = new Constant(map(lfoMods[1], 0.0, 1.0, 300.0, 400.0));
        Summer lfoSum = new Summer();
        lfo  = new Oscil(freq, amp, lfotable );
        lfoAdd.patch(lfoSum);
        lfo.patch(lfoSum);
        //send LFO to to Wav
        lfoSum.patch( wave.frequency );
      } else {
        lfotable = new Wavetable(lfoCapture);
        float freq = map(lfoMods[0], 0.0, 1.0, 0.05, 5.0);
        float amp = lfoMods[2];
        lfo  = new Oscil(freq, amp, lfotable );
        lfo.patch(wave.amplitude);
      }
    }
    //Send Wav to ADSR
    wave.patch( adsr );
  }
  //noteOn and noteOff called when out.playNote() is called
  void noteOn( float dur )
  {
    adsr.noteOn();
    adsr.patch( out );
  }

  void noteOff()
  {
    adsr.unpatchAfterRelease( out );
    adsr.noteOff();
    noShow = false;
  }
}
