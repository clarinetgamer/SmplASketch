boolean clearWav = true;
boolean wavControl = true;
boolean clearEnv = true;
boolean susMode = false;
float[] sliderVals = new float[3];
boolean spaceHit = false;
ArrayList<AudioSample> endSus = new ArrayList<AudioSample>();

void wavSnap() {
  takePicture("wav_image");
  wavImg = loadImage("wav_image.jpg");
  clearWav = false;
}

void envSnap() {//change to lfo
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

void resetLFO() { //Adjust for lfo mode
  envMult =1;
  clearEnv = true;
  susMode = false;
  filereset.save("env_image.jpg");
}

void smpl() {
  if (mode != 2.0) {
    float[] wav;
    if (clearWav && wavControl) {
      wav = resetSin;
    } else if (!wavControl) {
      wav = defaultWav;
    } else {
      wav = processWavImage();
    }
    AudioSample smpl = createSample(wav);
    playWav(smpl);
    playSliderEnv(smpl);
  } else {
    photowaveformSmpl();
  }
}

void photowaveformSmpl() { //this is very rudimentary and will do more later
  ArrayList<float[]> processed = processMultiImage(imageMode);
  if (photsynthesisDots[0] == true) {
    float[] wavR = processed.get(0);
    AudioSample smplR = createSample(wavR);
    playWav(smplR, 1.0*wavMult);
    playSliderEnv(smplR);
  }
  if (photsynthesisDots[2] == true) {
    float[] wavG = processed.get(1);
    AudioSample smplG = createSample(wavG);
    playWav(smplG, 1.5*wavMult);
    playSliderEnv(smplG);
  }
  if (photsynthesisDots[1] == true) {
    float[] wavB = processed.get(2);
    AudioSample smplB = createSample(wavB);
    playWav(smplB, 2.0*wavMult);
    playSliderEnv(smplB);
  }
  if (photsynthesisDots[3] == true) {
    float[] wavY = processed.get(3);
    AudioSample smplY = createSample(wavY);
    playWav(smplY, 2.5*wavMult);
    playSliderEnv(smplY);
  }
  if (photsynthesisDots[4] == true) {
    float[] wavP = processed.get(4);
    AudioSample smplP = createSample(wavP);
    playWav(smplP, 3.0*wavMult);
    playSliderEnv(smplP);
  }
  if (photsynthesisDots[5] == true) {
    float[] wavO = processed.get(5);
    AudioSample smplO = createSample(wavO);
    playWav(smplO, 3.5*wavMult);
    playSliderEnv(smplO);
  }
}
