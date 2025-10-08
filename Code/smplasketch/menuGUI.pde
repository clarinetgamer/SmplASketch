// GUI AutoGenSlop For Non Main Windows

boolean helpOpen = false;
boolean envOpen = false;
boolean wavOpen = false;
boolean imgOpen = false;

// 
// Help Menu
//

synchronized public void help_draw(PApplet appc, GWinData data) {
  appc.background(230);
}

public void closingHelper(GWindow window) { //_CODE_:envWindow:608261:
  helpOpen=false;
} //_CODE_:envWindow:608261:

GWindow helpMenu;
GImageButton helpMenuImg;

void createHelpGUI() {
  helpMenu = GWindow.getWindow(this, "Help", 50, 0, 240, 480, JAVA2D);
  helpMenu.noLoop();
  helpMenu.setActionOnClose(G4P.CLOSE_WINDOW);
  helpMenu.addDrawHandler(this, "help_draw");
  helpMenu.addOnCloseHandler(this, "closingHelper");
  helpMenuImg = new GImageButton(helpMenu, 0, 0, new String[] { "HelpMenu.png", "HelpMenu.png", "HelpMenu.png" } );
  helpMenu.loop();
  helpOpen=true;
}

// 
// Envelope Editor
//

synchronized public void win_draw1(PApplet appc, GWinData data) { //_CODE_:envWindow:707014:
  appc.background(143, 3, 3);
} //_CODE_:envWindow:707014:

public void closingEnv(GWindow window) { //_CODE_:envWindow:608261:
  closingEnv();
  envOpen=false;
} //_CODE_:envWindow:608261:

public void checkbox1_clicked1(GCheckbox source, GEvent event) { //_CODE_:checkbox1:403739:
  deviceControlEnv(event);
} //_CODE_:checkbox1:403739:

public void custom_slider1_change1(GCustomSlider source, GEvent event) { //_CODE_:custom_slider1:443042:
  sliderUpdate(source, event, 0);
} //_CODE_:custom_slider1:443042:

public void custom_slider2_change1(GCustomSlider source, GEvent event) { //_CODE_:custom_slider2:875688:
  sliderUpdate(source, event, 1);
} //_CODE_:custom_slider2:875688:

public void custom_slider3_change1(GCustomSlider source, GEvent event) { //_CODE_:custom_slider3:577796:
  sliderUpdate(source, event, 2);
} //_CODE_:custom_slider3:577796:

public void option1_clicked1(GOption source, GEvent event) { //_CODE_:sustain:236083:
  sustainMode(event);
} //_CODE_:sustain:236083:

public void option2_clicked1(GOption source, GEvent event) { //_CODE_:sliderRatios:316247:
  sliderModeEnv(event);
} //_CODE_:sliderRatios:316247:

public void option1_clicked2(GOption source, GEvent event) { //_CODE_:option1:402650:
  envModeReset(event);
} //_CODE_:option1:402650:

public void imgButton1_click2(GImageButton source, GEvent event) { //_CODE_:hideAllEnv:656167:
} //_CODE_:hideAllEnv:656167:

public void imgButton2_click1(GImageButton source, GEvent event) { //_CODE_:hideSlidersEnv:513038:
} //_CODE_:hideSlidersEnv:513038:

GWindow envWindow;
GCheckbox checkbox1;
GCustomSlider custom_slider1;
GCustomSlider custom_slider2;
GCustomSlider custom_slider3;
GLabel attack;
GLabel susText;
GLabel relText;
GToggleGroup togGroup1;
GOption sustain;
GOption sliderRatios;
GOption option1;
GImageButton hideAllEnv;
GImageButton hideSlidersEnv;

void createEnvGUI() {
  envWindow = GWindow.getWindow(this, "Envelope Editor", 25, 650, 290, 241, JAVA2D);
  envWindow.noLoop();
  envWindow.setActionOnClose(G4P.CLOSE_WINDOW);
  envWindow.addDrawHandler(this, "win_draw1");
  envWindow.addOnCloseHandler(this, "closingEnv");
  checkbox1 = new GCheckbox(envWindow, 166, 22, 108, 22);
  checkbox1.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  checkbox1.setText("Device Control");
  checkbox1.setLocalColorScheme(GCScheme.SCHEME_8);
  checkbox1.setOpaque(false);
  checkbox1.addEventHandler(this, "checkbox1_clicked1");
  checkbox1.setSelected(true);
  custom_slider1 = new GCustomSlider(envWindow, 10, 69, 266, 50, "red_yellow18px");
  custom_slider1.setShowLimits(true);
  custom_slider1.setLimits(5, 0, 10);
  custom_slider1.setNbrTicks(11);
  custom_slider1.setStickToTicks(true);
  custom_slider1.setShowTicks(true);
  custom_slider1.setNumberFormat(G4P.INTEGER, 0);
  custom_slider1.setLocalColorScheme(GCScheme.SCHEME_8);
  custom_slider1.setOpaque(false);
  custom_slider1.addEventHandler(this, "custom_slider1_change1");
  custom_slider2 = new GCustomSlider(envWindow, 10, 127, 266, 50, "red_yellow18px");
  custom_slider2.setShowLimits(true);
  custom_slider2.setLimits(5, 0, 10);
  custom_slider2.setNbrTicks(11);
  custom_slider2.setStickToTicks(true);
  custom_slider2.setShowTicks(true);
  custom_slider2.setNumberFormat(G4P.INTEGER, 0);
  custom_slider2.setLocalColorScheme(GCScheme.SCHEME_8);
  custom_slider2.setOpaque(false);
  custom_slider2.addEventHandler(this, "custom_slider2_change1");
  custom_slider3 = new GCustomSlider(envWindow, 10, 183, 266, 50, "red_yellow18px");
  custom_slider3.setShowLimits(true);
  custom_slider3.setLimits(5, 0, 10);
  custom_slider3.setNbrTicks(11);
  custom_slider3.setStickToTicks(true);
  custom_slider3.setShowTicks(true);
  custom_slider3.setNumberFormat(G4P.INTEGER, 0);
  custom_slider3.setLocalColorScheme(GCScheme.SCHEME_8);
  custom_slider3.setOpaque(false);
  custom_slider3.addEventHandler(this, "custom_slider3_change1");
  attack = new GLabel(envWindow, 10, 110, 265, 20);
  attack.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  attack.setText("Attack");
  attack.setLocalColorScheme(GCScheme.SCHEME_15);
  attack.setOpaque(false);
  susText = new GLabel(envWindow, 10, 167, 266, 20);
  susText.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  susText.setText("Sustain");
  susText.setLocalColorScheme(GCScheme.SCHEME_15);
  susText.setOpaque(false);
  relText = new GLabel(envWindow, 8, 218, 274, 20);
  relText.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  relText.setText("Release");
  relText.setLocalColorScheme(GCScheme.SCHEME_15);
  relText.setOpaque(false);
  togGroup1 = new GToggleGroup();
  sustain = new GOption(envWindow, 15, 14, 120, 20);
  sustain.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  sustain.setText("Sustain Mode");
  sustain.setLocalColorScheme(GCScheme.SCHEME_13);
  sustain.setOpaque(false);
  sustain.addEventHandler(this, "option1_clicked1");
  sliderRatios = new GOption(envWindow, 15, 37, 120, 20);
  sliderRatios.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  sliderRatios.setText("Use Slider Ratios");
  sliderRatios.setLocalColorScheme(GCScheme.SCHEME_10);
  sliderRatios.setOpaque(false);
  sliderRatios.addEventHandler(this, "option2_clicked1");
  option1 = new GOption(envWindow, 85, 400, 120, 20);
  option1.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  option1.setText("option text");
  option1.setOpaque(false);
  option1.addEventHandler(this, "option1_clicked2");
  togGroup1.addControl(sustain);
  togGroup1.addControl(sliderRatios);
  togGroup1.addControl(option1);
  option1.setSelected(true);
  hideAllEnv = new GImageButton(envWindow, 0, 0, 289, 241, new String[] { "EnvHideNonDev.png", "EnvHideNonDev.png", "EnvHideNonDev.png" } );
  hideAllEnv.addEventHandler(this, "imgButton1_click2");
  hideSlidersEnv = new GImageButton(envWindow, 0, 0, 289, 241, new String[] { "EnvHideSliders.png", "EnvHideSliders.png", "EnvHideSliders.png" } );
  hideSlidersEnv.addEventHandler(this, "imgButton2_click1");
  envWindow.loop();
  envOpen = true;
}

// 
// Waveform Editor
//
