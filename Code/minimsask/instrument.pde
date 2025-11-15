Minim minim;
AudioOutput out;
Oscil       wave;
Wavetable   wavtable;
Oscil       lfo;
Wavetable   lfotable;

class SmplInstrument implements Instrument
{
  
  ADSR adsr;
  // constructor
  SmplInstrument(float[] wavCapture, float[] lfoCapture, ADSR env)
  {
     adsr = env;
    // create oscillators of wavtable from float[]
    wavtable = new Wavetable(wavCapture);
    wave  = new Oscil( 440, 0.5f, wavtable );
    lfotable = new Wavetable(lfoCapture);
    lfo  = new Oscil( 0.5 , 220.0f, lfotable );

    //send LFO to to Wav
    lfo.patch( wave.frequency );

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
  }
}

ADSR genADSR(float maxAmp, float attTime, float decTime, float susLvl, float relTime) {
return new ADSR( maxAmp, attTime, decTime, susLvl, relTime );
}
