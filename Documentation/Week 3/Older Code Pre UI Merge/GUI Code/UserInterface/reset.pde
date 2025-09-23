float[] genSinWav() { //create sin wav arr
  float[] sinewave = new float[640];

  for (int i = 0; i < 640; i++) {
    sinewave[i] = sin(TWO_PI*i/640);
  }
  return sinewave;
}

float[] genBasicEnv() { //create reset env
  float attackTime = 0.1;
  float sustainTime = 0.5;
  float releaseTime = 0.4;
  return new float[]{attackTime, sustainTime, releaseTime};
}
