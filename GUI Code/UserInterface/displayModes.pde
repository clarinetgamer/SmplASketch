float[] sin = genSinWav();
float[] env = genBasicEnv();

void wavMode(float[] wav) {
  drawScreen();
  drawWav(wav);
  drawScreenBox();
}

void envMode(float[] env) {
  drawScreen();
  drawEnv(env);
  drawScreenBox();
}
void imgMode() {
  drawScreen();
  drawScreenBox();
}

void checkMode() {
  if (0.5 > mode &&  mode >= 0.0) {
    wavMode(sin);
  } else if (1.5 > mode &&  mode >= 0.5) {
    envMode(env);
  } else if (mode >= 1.5) {
    imgMode();
  } 
}
