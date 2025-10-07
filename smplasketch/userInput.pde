//Waveform Editor
void openWavMenu() {
  if (wavOpen == false) {
    //creatwavgui
  }
}

float[] defaultWav;

void defaultSin() {
  defaultWav = resetSin;
}

void defaultSqr() {
  float[] sqrwav = new float[640];

  for (int i = 0; i < 640; i++) {
    if (i < 320) {
      sqrwav[i] = 1;
    } else {
      sqrwav[i] = -1;
    }
  }
  defaultWav=sqrwav;
}

void defaultTri() {
}

void defaultSaw() {
}

void defaultRamp() {
}

void defaultStep() {
}

void wavDeviceControlOn() {
  wavControl = true;
}

void wavDeviceControlOff() {
  wavControl = false;
}

void tonalControl() {
}

void atonalControl() {
}

// Envelope Editor
void openEnvMenu() {
  if (envOpen == false) {
    createEnvGUI();
  }
}

void closingEnv() {
  susMode = false;
  sliderMode = false;
  clearEnv = true;
}

void deviceControlEnv(GEvent event) {
  if (event == GEvent.DESELECTED) {
    hideAllEnv.setVisible(false);
    option1.setSelected(true);
  } else if (event == GEvent.SELECTED) {
    hideAllEnv.setVisible(true);
    option1.setSelected(true);
    hideSlidersEnv.setVisible(true);
    custom_slider1.setLimits(5, 0, 10);
    custom_slider2.setLimits(5, 0, 10);
    custom_slider3.setLimits(5, 0, 10);
    susMode = false;
    sliderMode = false;
    clearEnv = true;
  }
}

void sustainMode(GEvent event) {
  if (event == GEvent.SELECTED) {
    hideSlidersEnv.setVisible(true);
    custom_slider1.setLimits(5, 0, 10);
    custom_slider2.setLimits(5, 0, 10);
    custom_slider3.setLimits(5, 0, 10);
    susMode = true;
    clearEnv = false;
    sliderMode = false;
  }
}

void sliderModeEnv(GEvent event) {
  if (event == GEvent.SELECTED) {
    hideSlidersEnv.setVisible(false);
    custom_slider1.setLimits(5, 0, 10);
    custom_slider2.setLimits(5, 0, 10);
    custom_slider3.setLimits(5, 0, 10);
    sliderVals = new int[]{5, 5, 5};
    susMode = false;
    clearEnv = false;
    sliderMode = true;
  }
}

void envModeReset(GEvent event) {
  if (event == GEvent.SELECTED) {
    hideSlidersEnv.setVisible(true);
    custom_slider1.setLimits(5, 0, 10);
    custom_slider2.setLimits(5, 0, 10);
    custom_slider3.setLimits(5, 0, 10);
    susMode = false;
    sliderMode = false;
    clearEnv = true;
  }
}

void sliderUpdate(GCustomSlider source, GEvent event, int index) {
  if (event == GEvent.RELEASED) {
    sliderVals[index] = source.getValueI();
  }
}

//PhotSynthesis Editor
void openImgMenu() {
  println("openImgMenu");
}

//Help Menu
void openHelpMenu() {
  if (helpOpen == false) {
    createHelpGUI();
  }
}

//Main Window
void setModeKnob(GKnob source) {
  mode = source.getValueF();
}

void setVolKnob(GKnob source) {
  volume = Math.round(source.getValueI()) * 0.1;//Round volume
  s.volume(volume);
}
