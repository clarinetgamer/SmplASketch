PImage filereset = createImage(camwidth, camheight, RGB);

float[] genSinWav() { //create sin wav arr
  float[] sinewave = new float[camwidth];

  for (int i = 0; i < camwidth; i++) {
    sinewave[i] = -sin(TWO_PI*i/camwidth);
  }
  return sinewave;
}

float[] genBasicEnv() { //create reset env
  float attackTime = 0.1;
  float sustainTime = 0.5;
  float releaseTime = 0.4;
  return new float[]{attackTime, sustainTime, releaseTime};
}

void clearCache() {
  resetWav();
  resetLFO();
  println("Image Cache Cleared");
}

void resetCalib() {
  zoom_slider2.setLimits(1.0, 0.8, 1.2);
  threshold_slider1.setLimits(0.791, 0.591, 0.991);
  threshold = 0.791;
  shift = 1.0;
}

void clearActiveSamples() {
  for (AudioSample s : endSus) {
    s.stop();
  }
  endSus = new ArrayList<AudioSample>();
}
