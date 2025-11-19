Oscil       red;
Oscil       green;
Oscil       blue;
Oscil       yellow;
Oscil       purple;
Oscil       orange;
Wavetable   redtable;
Wavetable   greentable;
Wavetable   bluetable;
Wavetable   yellowtable;
Wavetable   purpletable;
Wavetable   orangetable;

class Photosynthesizer implements Instrument
{

  ADSR adsr;
  // constructor
  Photosynthesizer(float[] Red, float[] Green, float[] Blue, float[] Yellow, float[] Purple, float[] Orange, ADSR env, float hz, int[] indexes, boolean[] switches)
  {
    Summer sum = new Summer();
    adsr = env;
    float[] amp = {1.0f, 0.7f, 0.5f, 0.3f, 0.1f, 0.05f};
    // create oscillators of wavtables from float[]'s
    if(switches[0]) {
    redtable = new Wavetable(Red);
    red  = new Oscil( ((float)indexes[0]+1) * hz, amp[indexes[0]], redtable );
    red.patch( sum );
    }if(switches[1]) {
    greentable = new Wavetable(Green);
    green  = new Oscil( ((float)indexes[1]+1) * hz, amp[indexes[1]], greentable );
    green.patch( sum );
    }if(switches[2]) {
    bluetable = new Wavetable(Blue);
    blue  = new Oscil( ((float)indexes[2]+1) * hz, amp[indexes[2]], bluetable );
    blue.patch( sum );
    }if(switches[3]) {
    yellowtable = new Wavetable(Yellow);
    yellow  = new Oscil( ((float)indexes[3]+1) * hz, amp[indexes[3]], yellowtable );
    yellow.patch( sum );
    }if(switches[4]) {
    purpletable = new Wavetable(Purple);
    purple  = new Oscil( ((float)indexes[4]+1) * hz, amp[indexes[4]], purpletable );
    purple.patch( sum );
    }if(switches[5]) {
    orangetable = new Wavetable(Orange);
    orange  = new Oscil( ((float)indexes[5]+1) * hz, amp[indexes[5]], orangetable );
    orange.patch( sum );
    }
    //Send Wav to ADSR
    sum.patch( adsr );
  }
  //noteOn and noteOred called when out.playNote() is called
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
