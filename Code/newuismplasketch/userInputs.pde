////Waveform Editor
//void openWavMenu() {
//  if (wavOpen == false) {
//    createWavGUI();
//  }
//}

//void closingWav() {
//  wavOpen = false;
//}

float[] defaultWav = resetSin;

//void wavDeviceControlOn() {
//  wavControl = true;
//  nowav.setSelected(true);
//  greystuff.setVisible(true);
//  wavlock.setVisible(true);
//}

//void wavDeviceControlOff() {
//  wavControl = false;
//  sinwave.setSelected(true);
//  greystuff.setVisible(false);
//  wavlock.setVisible(false);
//}

//void tonalControl() {
//  sliderwavhider.setVisible(true);
//  pitch.setLimits(1, 0, 2); // fix limits
//  wavMult=1;
//}

//void atonalControl() {
//  sliderwavhider.setVisible(false);
//  pitch.setLimits(1, 0, 2); // fix limits
//  wavMult=1;
//}

//void freqSlider(GCustomSlider source, GEvent event) {
//  if (event == GEvent.RELEASED) {
//    wavMult = source.getValueF();
//  }
//}

//Wav Generation Functions
void defaultSin() {
  defaultWav = resetSin;
}

void defaultSqr() {
  float[] sqrwav = new float[camwidth];

  for (int i = 0; i < 640; i++) {
    if (i < 320) {
      sqrwav[i] = -1;
    } else {
      sqrwav[i] = 1;
    }
  }
  defaultWav=sqrwav;
}

void defaultTri() {
  float[] triwav = new float[camwidth];
  int counter = 0;
  for (int i = 0; i < 640; i++) {
    if (i == 0) {
      counter = 0;
    } else if (i < 160) {
      counter +=1;
    } else if (i < 480) {
      counter -=1;
      triwav[i] = counter;
    } else {
      counter +=1;
    }
    triwav[i] = map(counter, -159, 159, 1, -1);
  }
  defaultWav=triwav;
}

void defaultSaw() {
  float[] sawwav = new float[camwidth];
  int counter = 320;
  for (int i = 0; i < 640; i++) {
    counter -=1;
    sawwav[i] = map(counter, -319, 319, 1, -1);
  }
  defaultWav = sawwav;
}

void defaultRamp() {
  float[] rampwav = new float[camwidth];
  int counter = -320;
  for (int i = 0; i < 640; i++) {
    counter +=1;
    rampwav[i] = map(counter, -319, 319, 1, -1);
  }
  defaultWav=rampwav;
}

void defaultStep() {
  float[] stepwav = new float[camwidth];
  int counter = 0;
  int step = 0;
  for (int i = 0; i < 640; i++) {
    if (step != 16) {
      step++;
    } else {
      counter++;
      step=0;
    }
    stepwav[i] = map(counter, 0, 39, 1, -1);
  }
  defaultWav=stepwav;
}

//// Envelope Editor
//void openEnvMenu() {
//  if (envOpen == false) {
//    createEnvGUI();
//  }
//}

//void closingEnv() {
//  susMode = false;
//  sliderMode = false;
//  clearEnv = true;
//  envOpen=false;
//}

//void deviceControlEnv(GEvent event) {
//  if (event == GEvent.DESELECTED) {
//    hideAllEnv.setVisible(false);
//    option1.setSelected(true);
//    sustain.setVisible(true);
//    sliderRatios.setVisible(true);
//  } else if (event == GEvent.SELECTED) {
//    sustain.setVisible(false);
//    sliderRatios.setVisible(false);
//    hideAllEnv.setVisible(true);
//    option1.setSelected(true);
//    hideSlidersEnv.setVisible(true);
//    custom_slider1.setLimits(5, 0, 10);
//    custom_slider2.setLimits(5, 0, 10);
//    custom_slider3.setLimits(5, 0, 10);
//    susMode = false;
//    sliderMode = false;
//    clearEnv = true;
//  }
//}

//void sustainMode(GEvent event) {
//  if (event == GEvent.SELECTED) {
//    hideSlidersEnv.setVisible(true);
//    custom_slider1.setLimits(5, 0, 10);
//    custom_slider2.setLimits(5, 0, 10);
//    custom_slider3.setLimits(5, 0, 10);
//    susMode = true;
//    clearEnv = false;
//    sliderMode = false;
//  }
//}

void envMenuStart() {
    attack_slider.setLimits(5, 0, 10);
    sustain_slider.setLimits(5.005, 0.01, 10);
    release_slider.setLimits(5, 0, 10);
    sliderVals = new float[]{5, 5, 5};
    clearEnv = true;
}

void sliderUpdate(GCustomSlider source, GEvent event, int index) {
  if (event == GEvent.RELEASED) {
    sliderVals[index] = source.getValueF();
  }
  for (float f : sliderVals) {
    println(f);
  }
}

//Main Window
void setModeKnob(GKnob source) {
  mode = source.getValueF();
}

void setVolKnob(GKnob source) {
  volume = Math.round(source.getValueI()) * 0.1;//Round volume
  s.volume(volume);
  print(volume);
}
