float volume = 0.2; 
float wavMult = 1;
float envMult = 1;
float lfoMult = 1;
float lfoBound = 0.5;
float lfoRange = 1.5;

void resetWav() {
  wavMult= 1;
  clearWav = true;
  filereset.save("wav_image.jpg");
  wavSlot.setText("Empty");
  octave_slider1.setLimits(2.0, 0.0, 4.0);
  pitch.setText("C");
  pitchFine.setText("");
  noteIndex = 7;
  octIndex = 2;
  freq_slider1.setLimits(0.0, -20.0, 20.0);
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

void resetEnv() {
  attack_slider.setLimits(5.0005, 0.01, 10);
  decay_slider1.setLimits(5.005, 0.01, 10);
  sustain_slider.setLimits(5.005, 0.01, 10);
  release_slider.setLimits(5.005, 0.01, 10);
  sliderVals = new float[]{5, 5, 5, 5};
  clearEnv = true;
  envMult = 1;
  envDur_slider1.setLimits(1.25, 0.5, 2.0);
}

void resetCalib() {
  zoom_slider2.setLimits(1.0, 0.8, 1.2);
  threshold_slider1.setLimits(0.791, 0.591, 0.991);
  threshold = 0.791;
  shift = 1.0;
}

void clearCache() {
  resetWav();
  resetLFO();
  resetEnv();
  println("Image Cache Cleared");
}

void wait(int time) {
  int start = millis();
  while (millis() <= start+time) {
  }
}
