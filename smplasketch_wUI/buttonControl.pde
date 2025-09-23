boolean clearWav = true;
boolean clearEnv = true;

void wavSnap() {
  takePicture("wav_image");
  wavImg = loadImage("wav_image.jpg");
  clearWav = false;
}

void envSnap() {
  takePicture("env_image");
  envImg = loadImage("env_image.jpg");
  clearEnv = false;
}

void incWavMult() {
  if (wavMult < 2.0) {
    wavMult += 0.1;
  }
}

void decWavMult() {
  if (wavMult > 0.5) {
    wavMult -= 0.1;
  }
}

void incEnvMult() {
  if (envMult < 2.0) {
    envMult += 0.1;
  }
}

void decEnvMult() {
  if (envMult > 0.5) {
    envMult -= 0.1;
  }
}

void resetWav() {
  wavMult=1;
  clearWav = true;
  filereset.save("wav_image.jpg");
}

void resetEnv() {
  envMult =1;
  clearEnv = true;
  filereset.save("env_image.jpg");
}

void smpl() {
  float[] wav;
  if (clearWav) {
    wav = resetSin;
  } else {
    wav = processWavImage();
  }
  AudioSample smpl = createSample(wav);
  playWav(smpl);
  if (clearEnv) {
    playDemoEnv(smpl);
  } else {
    playEnv(smpl);
  }
}
