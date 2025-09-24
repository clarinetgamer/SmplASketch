void openWavMenu() {
  println("openWavMenu");
}

void openEnvMenu() {
  println("openEnvMenu");
}

void openImgMenu() {
  println("openImgMenu");
}

void openHelpMenu() {
  createHelpGUI();
}

void setModeKnob(GKnob source) {
  mode = source.getValueF();
}

void setVolKnob(GKnob source) {
  volume = Math.round(source.getValueI()) * 0.1;//Round volume
  s.volume(volume);
}
