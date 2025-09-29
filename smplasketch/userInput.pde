//Waveform Editor
void openWavMenu() {
  println("openWavMenu");
}

// Envelope Editor
void openEnvMenu() {
  println("openEnvMenu");
}

void deviceControlEnv(GEvent event){
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
  }
}

void sustainMode(GEvent event) {
if (event == GEvent.SELECTED) {
    hideSlidersEnv.setVisible(true);
    custom_slider1.setLimits(5, 0, 10);
    custom_slider2.setLimits(5, 0, 10);
    custom_slider3.setLimits(5, 0, 10);
    //SUSTAIN MODE FUNCTION
  }
}

void sliderModeEnv(GEvent event){
if (event == GEvent.SELECTED) {
    hideSlidersEnv.setVisible(false);
    custom_slider1.setLimits(5, 0, 10);
    custom_slider2.setLimits(5, 0, 10);
    custom_slider3.setLimits(5, 0, 10);
    //RATIO MODE FUNCTION
  }
}

void envModeReset(GEvent event){
if (event == GEvent.SELECTED) {
    hideSlidersEnv.setVisible(true);
    custom_slider1.setLimits(5, 0, 10);
    custom_slider2.setLimits(5, 0, 10);
    custom_slider3.setLimits(5, 0, 10);
  }
}

//PhotSynthesis Editor
void openImgMenu() {
  println("openImgMenu");
}

//Help Menu
void openHelpMenu() {
  createHelpGUI();
}

//Main Window
void setModeKnob(GKnob source) {
  mode = source.getValueF();
}

void setVolKnob(GKnob source) {
  volume = Math.round(source.getValueI()) * 0.1;//Round volume
  s.volume(volume);
}
