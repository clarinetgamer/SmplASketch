Oscil       wave;
Oscil       lfo;
Wavetable   wavtable;
Wavetable   lfotable;

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
      lfotable = new Wavetable(lfoCapture);
      lfo  = new Oscil( 0.5, 220.0f, lfotable );

      //send LFO to to Wav
      lfo.patch( wave.frequency );
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
