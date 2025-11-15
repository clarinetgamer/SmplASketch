float[] resetSin = genSinWav();
float mode = 0.0; 
float prevMode = 0.0;
boolean drawCombWav = true;
boolean drawCombEnv = false;
boolean drawCombLFO = false;
boolean camVsCapCalib = true;
boolean calibMode = false;

PImage camCap;
boolean extraction = false;

void calibMode() { //Display/functionality of calibration
  takePicture("calib");
  modeDisplay.setText("Calibration");
  PImage camCapMod;
  camCap = loadImage("calib.jpg");
  if (camVsCapCalib) {
    camCapMod = crop(camCap);
  } else {
    camCapMod = threshed(crop(camCap));
  }
  image(camCapMod, 430, 128);
  if (extraction) {
    drawExtract(processCalibImage());
  }
}

//Screen Modes
void wavMode(float[] wav) { //save slot 1
  drawScreen();
  drawWav(wav);
}

void envMode(float[] env) { //envelope editor
  drawScreen();
  drawEnv(env);
}

void lfoMode(float[] lfo) { //save slot 1
  drawScreen();
  drawLFO(lfo);
}

void comboMode(float[] wav, float[] env, float[] lfo) { //playback display
  drawScreen();
  if (drawCombWav)drawWav(wav);
  if (drawCombEnv)drawEnv(env);
  if (drawCombLFO)drawLFO(lfo);
}

void imgMode() { //photosynthesis display
  drawScreen();
  ArrayList<float[]> arrList = processMultiImage(imageMode);
  int counter = 0;
  for (float[] f : arrList) { //only draw color wavs that are selected
    if (counter == 0) {
      if (photsynthesisDots[0] == true) drawWav(f, 255, 0, 0);
    } else if (counter == 1) {
      if (photsynthesisDots[2] == true) drawWav(f, 0, 255, 0);
    } else if (counter == 2) {
      if (photsynthesisDots[1] == true) drawWav(f, 0, 0, 255);
    } else if (counter == 3) {
      if (photsynthesisDots[3] == true) drawWav(f, 255, 255, 0);
    } else if (counter == 4) {
      if (photsynthesisDots[4] == true) drawWav(f, 128, 0, 128);
    } else if (counter == 5) {
      if (photsynthesisDots[5] == true) drawWav(f, 255, 165, 0);
    }
    counter++;
  }
}

void checkMode() { //Checks to see which position the knob is in and sends values into drawing helpers for each mode
  float[] wavtemp;
  float[] envtemp;
  float[] lfotemp;
  if (0.0 == mode || prevMode == 0.0) {
    if (clearWav && wavControl) {
      wavMode(resetSin);
    } else if (!wavControl) {
      wavMode(defaultWav);
    } else {
      wavMode(processWavImage());
    }
    modeDisplay.setText("Waveform");
    prevMode = 0.0;
  }
  if (1.0 == mode || prevMode == 1.0) {
    float[] mappedSliders = new float[]{map(sliderVals[0], 0, 10, 0., 1.), map(sliderVals[1], 0, 10, 0., 1.), map(sliderVals[2], 0, 10, 0., 1.), map(sliderVals[3], 0, 10, 0., 1.)};
    envMode(mappedSliders);
    modeDisplay.setText("Envelope");
    prevMode = 1.0;
  }
  if (2.0 == mode || prevMode ==2.0) {
    if (clearLFO && lfoControl) {
      lfoMode(resetSin);
    } else if (!lfoControl) {
      lfoMode(defaultLFO);
    } else {
      lfoMode(processLFOImage());
    }
    modeDisplay.setText("LFO");
    prevMode = 2.0;
  }
  if (3.0 == mode || prevMode ==3.0) {
    if (clearWav && wavControl) {
      wavtemp = resetSin;
    } else if (!wavControl) {
      wavtemp = defaultWav;
    } else {
      wavtemp = processWavImage();
    }
    envtemp = new float[]{map(sliderVals[0], 0, 10, 0., 1.), map(sliderVals[1], 0, 10, 0., 1.), map(sliderVals[2], 0, 10, 0., 1.), map(sliderVals[3], 0, 10, 0., 1.)};
    if (clearLFO && lfoControl) {
      lfotemp = resetSin;
    } else if (!lfoControl) {
      lfotemp = defaultLFO;
    } else {
      lfotemp = processLFOImage();
    }
    comboMode(wavtemp, envtemp, lfotemp);
    modeDisplay.setText("Combinatory/Playback");
    prevMode = 3.0;
  }
  if (4.0 == mode || prevMode ==4.0) {
    imgMode();
    modeDisplay.setText("Photosynthesis");
    prevMode = 4.0;
  }
}

//sets either regular display mode or calib
void screenMode() {
if (calibMode) {
    calibMode();
  } else {
    checkMode();
  }
}
