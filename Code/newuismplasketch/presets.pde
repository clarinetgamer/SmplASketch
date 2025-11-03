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
  resetEnv();
  println("Image Cache Cleared");
}

void clearActiveSamples() {
  for (AudioSample s : endSus) {
    s.stop();
  }
  endSus = new ArrayList<AudioSample>();
}
