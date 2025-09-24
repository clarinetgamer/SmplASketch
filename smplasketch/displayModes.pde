float[] resetSin = genSinWav();
float[] resetEnv = genBasicEnv();
float mode = 0.0; //0.0 is Wav Mode 1.0 is Env Mode 2.0 is IMG mode
float prevMode = 0.0;

void wavMode(float[] wav) { //Draw Screen, draw wav, draw outline
  drawScreen();
  drawWav(wav);
  drawScreenBox();
}

void envMode(float[] env) {//Draw Screen, draw env, draw outline
  drawScreen();
  drawEnv(env);
  drawScreenBox();
}
void imgMode() { //Draw Screen, draw wavs(need to add), draw outline
  drawScreen();
  drawScreenBox();
}

void checkMode() { //Would do else ifs but this logic makes the knob smoother
  if (0.0 == mode || prevMode == 0.0) {
    if (clearWav) {
      wavMode(resetSin);
    } else {
      wavMode(processWavImage());
    }
    prevMode = 0.0;
  }
  if (1.0 == mode || prevMode == 1.0) {
    if (clearEnv) {
      envMode(resetEnv);
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
