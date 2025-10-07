boolean clearWav = true; //<>//
boolean wavControl = true;
boolean clearEnv = true;
boolean susMode = false;
boolean sliderMode = false;
int[] sliderVals = new int[3];
boolean spaceHit = false;
ArrayList<AudioSample> endSus = new ArrayList<AudioSample>();

void checkForConnection() { //add to interface with device/camera
  if (key == 'i') {
    drawConnectionIcon(true);
  } else if (key == 'o') {
    drawConnectionIcon(false);
  }
}

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
  susMode = false;
  sliderMode = false;
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
    if (clearEnv) {
      playDemoEnv(smpl);
    } else if (susMode) {
      endSus.add(smpl);
    } else if (sliderMode) {
      playSliderEnv(smpl);
    } else {
      playEnv(smpl);
    }
  } else {
    photowaveformSmpl();
  }
}

void photowaveformSmpl() {
  ArrayList<float[]> processed = processMultiImage(imageMode);
  float[] wavR = processed.get(0);
  float[] wavG = processed.get(1);
  float[] wavB = processed.get(2);
  AudioSample smplR = createSample(wavR);
  AudioSample smplG = createSample(wavG);
  AudioSample smplB = createSample(wavB);
  AudioSample body = createSample(resetSin);
  playWav(body, 0.75*wavMult);
  playWav(smplR, 1.0*wavMult);
  playWav(smplG, 1.5*wavMult);
  playWav(smplB, 2.0*wavMult);
  if (clearEnv) {
    playDemoEnv(body);
    playDemoEnv(smplR);
    playDemoEnv(smplG);
    playDemoEnv(smplB);
  } else if (susMode) {
    endSus.add(body);
    endSus.add(smplR);
    endSus.add(smplG);
    endSus.add(smplB);
  } else if (sliderMode) {
    playSliderEnv(body);
    playSliderEnv(smplR);
    playSliderEnv(smplG);
    playSliderEnv(smplB);
  } else {
    playEnv(body);
    playEnv(smplR);
    playEnv(smplG);
    playEnv(smplB);
  }
}
