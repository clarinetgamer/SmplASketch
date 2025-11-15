boolean clearWav = true;
boolean wavControl = true;
boolean lfoControl = true;
boolean clearLFO = true;
boolean clearEnv = true;
boolean susMode = false;
float[] sliderVals = new float[3];
boolean spaceHit = false;
boolean photoPitch = true;
ArrayList<AudioSample> endSus = new ArrayList<AudioSample>();
boolean lfoOn = false;
boolean activateGreen = false;


void wavSnap() {
  takePicture("wav_image");
  wavImg = loadImage("wav_image.jpg");
  clearWav = false;
  wavSlot.setText("In Use");
}

void lfoSnap() {//change to lfo
  takePicture("lfo_image");
  lfoImg = loadImage("lfo_image.jpg");
  clearLFO = false;
  LFOSlot.setText("In Use");
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

void incLFOMult() {
  if (lfoMult < 2.0) {
    lfoMult += 0.1;
  }
}

void decLFOMult() {
  if (lfoMult > 0.5) {
    lfoMult -= 0.1;
  }
}

void resetWav() {
  wavMult= 1;
  clearWav = true;
  filereset.save("wav_image.jpg");
  wavSlot.setText("Empty");
  octave_slider1.setLimits(2.0, 0.0, 4.0);
  pitch.setText("C");
  freq_slider1.setLimits(0.0, -0.2, 0.2);
  bigtone_slider1.setLimits(6, 0, 12);
  DevControWav.setSelected(true);
  wavControl=true;
  defaultWav = resetSin;
  sinButt.setSelected(true);
}

void resetLFO() {
  lfoMult = 1;
  clearLFO = true;
  filereset.save("lfo_image.jpg");
  LFOSlot.setText("Empty");
}

void smpl() {
  linecounter = 0;
  activateGreen = true;
  if (mode != 4.0) {
    float[] wav;
    float[] lfo;
    if (clearWav && wavControl) {
      wav = resetSin;
    } else if (!wavControl) {
      wav = defaultWav;
    } else {
      wav = processWavImage();
    }
    if (clearLFO/* && lfoControl*/) {
      lfo = resetSin;
    } /*else if (!lfoControl) {
      lfo = defaultLFO;
    } */else {
      lfo = processLFOImage();
    }
    AudioSample smpl = createSample(wav);
    playWav(smpl);
    playSliderEnv(smpl);
    if(lfoOn) playLFO(smpl, lfo);
  } else {
    photowaveformSmpl();
  }
}

void photowaveformSmpl() { //this is very rudimentary and will do more later
  ArrayList<float[]> processed = processMultiImage(imageMode);
  float photoSampleRate;
  if (photoPitch) {
    photoSampleRate = (samplerate[srIndex]+fineAdjust)/4;
  } else {
    photoSampleRate = (samplerate[6]+fineAdjust)/4;
  }

  if (photsynthesisDots[0] == true) {
    float[] wavR = processed.get(0);
    AudioSample smplR = createSample(wavR);
    playWav(smplR, photoSampleRate*(1+freqArrPhotoMode[0]));
    playSliderEnv(smplR);
  }
  if (photsynthesisDots[2] == true) {
    float[] wavG = processed.get(1);
    AudioSample smplG = createSample(wavG);
    playWav(smplG, photoSampleRate*(1+freqArrPhotoMode[1]));
    playSliderEnv(smplG);
  }
  if (photsynthesisDots[1] == true) {
    float[] wavB = processed.get(2);
    AudioSample smplB = createSample(wavB);
    playWav(smplB, photoSampleRate*(1+freqArrPhotoMode[2]));
    playSliderEnv(smplB);
  }
  if (photsynthesisDots[3] == true) {
    float[] wavY = processed.get(3);
    AudioSample smplY = createSample(wavY);
    playWav(smplY, photoSampleRate*(1+freqArrPhotoMode[3]));
    playSliderEnv(smplY);
  }
  if (photsynthesisDots[4] == true) {
    float[] wavP = processed.get(4);
    AudioSample smplP = createSample(wavP);
    playWav(smplP, photoSampleRate*(1+freqArrPhotoMode[4]));
    playSliderEnv(smplP);
  }
  if (photsynthesisDots[5] == true) {
    float[] wavO = processed.get(5);
    AudioSample smplO = createSample(wavO);
    playWav(smplO, photoSampleRate*(1+freqArrPhotoMode[5]));
    playSliderEnv(smplO);
  }
}
