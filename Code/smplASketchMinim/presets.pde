boolean clearWav = true;
boolean wavControl = true;
boolean lfoControl = true;
boolean clearLFO = true;
boolean clearEnv = true;
boolean susMode = false;
float[] sliderVals = new float[4];
float[] lfoMods = {0.5, 0.5, 0.5};
boolean spaceHit = false;
boolean photoPitch = true;
boolean photoEnvDisplay = false;
boolean lfoOn = false;
boolean noShow = false;
PImage filereset = createImage(camwidth, camheight, RGB);
float[] emptyWav = {0.0};
boolean fmOn = true;

//UI Setup
void uiSetup() {
  smooth(10);
  createGUI();
  bigtone_slider1.setShowTicks(false);
  octave_slider1.setShowTicks(false);
  setAdditionSchemes();
}

//Wav/LFO Generation Functions
float[] genSinWav() { //create sin wav arr
  float[] sinewave = new float[camwidth];

  for (int i = 0; i < camwidth; i++) {
    sinewave[i] = -sin(TWO_PI*i/camwidth);
  }
  return sinewave;
}

void defaultSin(boolean wavOrLFO) {
  if (wavOrLFO) {
    defaultWav=resetSin;
  } else {
    defaultLFO=resetSin;
  }
}

void defaultSqr(boolean wavOrLFO) {
  float[] sqrwav = new float[camwidth];

  for (int i = 0; i < camwidth; i++) {
    if (i < camwidth/2) {
      sqrwav[i] = -1;
    } else {
      sqrwav[i] = 1;
    }
  }
  if (wavOrLFO) {
    defaultWav=sqrwav;
  } else {
    defaultLFO=sqrwav;
  }
}

void defaultTri(boolean wavOrLFO) {
  float[] triwav = new float[camwidth];
  int counter = 0;
  for (int i = 0; i < camwidth; i++) {
    if (i == 0) {
      counter = 0;
    } else if (i < camwidth/4) {
      counter +=1;
    } else if (i < (camwidth*3)/4) {
      counter -=1;
      triwav[i] = counter;
    } else {
      counter +=1;
    }
    triwav[i] = map(counter, -((camwidth/4)-1), ((camwidth/4)-1), 1, -1);
  }
  if (wavOrLFO) {
    defaultWav=triwav;
  } else {
    defaultLFO=triwav;
  }
}

void defaultSaw(boolean wavOrLFO) {
  float[] sawwav = new float[camwidth];
  int counter = camwidth/2;
  for (int i = 0; i < camwidth; i++) {
    counter -=1;
    sawwav[i] = map(counter, -((camwidth/2)-1), ((camwidth/2)-1), 1, -1);
  }
  if (wavOrLFO) {
    defaultWav=sawwav;
  } else {
    defaultLFO=sawwav;
  }
}

void defaultRamp(boolean wavOrLFO) {
  float[] rampwav = new float[camwidth];
  int counter = -(camwidth/2);
  for (int i = 0; i < camwidth; i++) {
    counter +=1;
    rampwav[i] = map(counter, -((camwidth/2)-1), ((camwidth/2)-1), 1, -1);
  }
  if (wavOrLFO) {
    defaultWav=rampwav;
  } else {
    defaultLFO=rampwav;
  }
}

void defaultStep(boolean wavOrLFO) {
  float[] stepwav = new float[camwidth];
  int counter = 0;
  int step = 0;
  for (int i = 0; i < camwidth; i++) {
    if (step != camwidth/40) {
      step++;
    } else {
      counter++;
      step=0;
    }
    stepwav[i] = map(counter, 0, (camwidth/16)-1, 1, -1);
  }
  if (wavOrLFO) {
    defaultWav=stepwav;
  } else {
    defaultLFO=stepwav;
  }
}
