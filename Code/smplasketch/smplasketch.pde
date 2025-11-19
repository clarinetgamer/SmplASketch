import g4p_controls.*;
import ddf.minim.*;
import ddf.minim.ugens.*;

boolean test = true;

//Camera Dimensions Setup
int[] sizeArr = {661, 480};
int camwidth = sizeArr[0];
int camheight = sizeArr[1];

//Minim Setup
Minim minim;
AudioOutput out;
AudioRecorder recorder;

public void setup() {
  //Setup Main Window
  size(1512, 850, JAVA2D);
  smooth(10);
  uiSetup();
  //Img setup(create blank copies for processsion)
  modWavImg = createImage(camwidth, camheight, RGB);
  modCalibImg = createImage(camwidth, camheight, RGB);
  modLFOImg = createImage(camwidth, camheight, RGB);
  initImgFromFile("blank.jpg");
  //Camera Setup
  searchForCamera();
  //clear cache
  clearCache();
  //Setup Envelope Code
  resetEnv();
  //Minim Setup
  minim = new Minim(this);
  out = minim.getLineOut( Minim.MONO, 2048 );
}

public void draw() {
  drawDarkMode(); //Draw background
  setOnDotsVis(); //Set photosynthesis knob lights to off
  screenMode(); //Choose what to display on SmplASketch screen
  playheadAnimation(); //If playhead is on handle animation
}
