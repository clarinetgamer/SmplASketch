float[] resetSin = genSinWav();
float[] resetEnv = genBasicEnv();
float mode = 0.0; //0.0 is Wav Mode 1.0 is Env Mode 2.0 is IMG mode
float prevMode = 0.0;

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
      drawWav(f, 255, 0, 0);
    } else if (counter == 1) {
      drawWav(f, 0, 255, 0);
    } else if (counter == 2) {
      drawWav(f, 0, 0, 255);
    }
    counter++;
  }
}

void checkMode() { //Would do else ifs but this logic makes the knob smoother
  if (0.0 == mode || prevMode == 0.0) {
    if (clearWav && wavControl) {
      wavMode(resetSin);
    } else if(!wavControl) {
    wavMode(defaultWav);
    }else {
      wavMode(processWavImage());
    }
    prevMode = 0.0;
  }
  if (1.0 == mode || prevMode == 1.0) {
    if (clearEnv) {
      envMode(resetEnv);
    } else if (susMode) {
      envMode(new float[]{0.1, 0.9, 0});
    } else if (sliderMode) {
      float[] mappedSliders = new float[]{map(sliderVals[0], 0, 10, 0., 1.), map(sliderVals[1], 0, 10, 0., 1.), map(sliderVals[2], 0, 10, 0., 1.)};
      envMode(mappedSliders);
    } else {
      envMode(getTimeVals());
    }
    prevMode = 1.0;
  }
  if (2.0 == mode || prevMode ==2.0) {
    imgMode();
    prevMode = 2.0;
  }
}
