Oscil       ff;
Oscil       h1;
Oscil       h2;
Oscil       h3;
Oscil       h4;
Oscil       h5;
Wavetable   fftable;
Wavetable   h1table;
Wavetable   h2table;
Wavetable   h3table;
Wavetable   h4table;
Wavetable   h5table;

class Photosynthesizer implements Instrument
{

  ADSR adsr;
  // constructor
  Photosynthesizer(float[] FF, float[] H1, float[] H2, float[] H3, float[] H4, float[] H5, ADSR env, float hz)
  {
    Summer sum = new Summer();
    adsr = env;
    // create oscillators of wavtables from float[]'s
    fftable = new Wavetable(FF);
    ff  = new Oscil( hz, 1.0f, fftable );
    ff.patch( sum );
    h1table = new Wavetable(H1);
    h1  = new Oscil( 2*hz, 0.7f, h1table );
    h1.patch( sum );
    h2table = new Wavetable(H2);
    h2  = new Oscil( 3*hz, 0.5f, h2table );
    h2.patch( sum );
    h3table = new Wavetable(H3);
    h3  = new Oscil( 4*hz, 0.3f, h3table );
    h3.patch( sum );
    h4table = new Wavetable(H4);
    h4  = new Oscil( 5*hz, 0.1f, h4table );
    h4.patch( sum );
    h4table = new Wavetable(H5);
    h4  = new Oscil( 6*hz, 0.05f, h5table );
    h4.patch( sum );

    //Send Wav to ADSR
    sum.patch( adsr );
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
