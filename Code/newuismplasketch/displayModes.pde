float[] resetSin = genSinWav();
float[] resetEnv = genBasicEnv();
float mode = 0.0; //0.0 is Wav Mode 1.0 is Env Mode 2.0 is IMG mode
float prevMode = 0.0;

boolean camVsCapCalib = true;

void wavMode(float[] wav) { //Draw Screen, draw wav, draw outline
  drawScreen();
  drawWav(wav);
}

void envMode(float[] env) {//Draw Screen, draw env, draw outline
  drawScreen();
  drawEnv(env);
}
void imgMode() { //Draw Screen, draw wavs(need to add), draw outline
  drawScreen();
  ArrayList<float[]> arrList = processMultiImage(imageMode);
  int counter = 0;
  for (float[] f : arrList) {
    if (counter == 0) {
      if(photsynthesisDots[0] == true) drawWav(f, 255, 0, 0);
    } else if (counter == 1) {
      if(photsynthesisDots[2] == true) drawWav(f, 0, 255, 0);
    } else if (counter == 2) {
      if(photsynthesisDots[1] == true) drawWav(f, 0, 0, 255);
    } else if (counter == 3) {
      if(photsynthesisDots[3] == true) drawWav(f, 255, 255, 0);
    } else if (counter == 4) {
      if(photsynthesisDots[4] == true) drawWav(f, 128, 0, 128);
    } else if (counter == 5) {
      if(photsynthesisDots[5] == true) drawWav(f, 255, 165, 0);
    }
    counter++;
  }
}

void checkMode() { //Would do else ifs but this logic makes the knob smoother
  if (0.0 == mode || prevMode == 0.0) {
    if (clearWav && wavControl) {
      wavMode(resetSin);
    } else if (!wavControl) {
      wavMode(defaultWav);
    } else {
      wavMode(processWavImage());
    }
    prevMode = 0.0;
  }
  if (1.0 == mode || prevMode == 1.0) {
    float[] mappedSliders = new float[]{map(sliderVals[0], 0, 10, 0., 1.), map(sliderVals[1], 0, 10, 0., 1.), map(sliderVals[2], 0, 10, 0., 1.)};
    envMode(mappedSliders);
    prevMode = 1.0;
  }
  if (2.0 == mode || prevMode ==2.0) {
    //lfomode
    prevMode = 2.0;
  }
  if (3.0 == mode || prevMode ==3.0) {
    //lfocombinemode
    prevMode = 3.0;
  }
  if (4.0 == mode || prevMode ==4.0) {
    imgMode();
    prevMode = 4.0;
  }
}

PImage camCap;
boolean extraction = false;

void calibMode() {
  takePicture("calib");
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
