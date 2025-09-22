float volume = 0.2;
float mode = 0.0; //0.0 is Wav Mode 1.0 is Env Mode 2.0 is IMG mode

float[] mappedFlArr(float[] flArr) {
  float[] temp = new float[flArr.length];
  for (int i = 0; i < flArr.length; i++) {
    temp[i] = map(flArr[i], -1, 1, 40, 320);
  }
  return temp;
}

float[] mapEnv(float[] env) {
  float totalTime = env[0]+env[1]+env[2];
  float attackTime = map(env[0], 0, totalTime, 0, 640);
  float sustainTime = map(env[0], 0, totalTime, 0, 640);
  float releaseTime = map(env[0], 0, totalTime, 0, 640);
  return new float[]{attackTime, sustainTime, releaseTime};
}
