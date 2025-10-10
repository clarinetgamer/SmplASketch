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
synchronized public void waveditordraw(PApplet appc, GWinData data) { //_CODE_:wavWindow:973281:
  appc.background(143, 3, 3);
} //_CODE_:wavWindow:973281:

public void closingWav(GWindow window) { //_CODE_:envWindow:608261:
  closingWav();
}

public void wavdevice1_clicked1(GOption source, GEvent event) { //_CODE_:wavdevice1:252560:
  if (event == GEvent.SELECTED) {
    tonalControl();
  }
} //_CODE_:wavdevice1:252560:

public void pitchmode_clicked1(GOption source, GEvent event) { //_CODE_:pitchmode:772210:
  if (event == GEvent.SELECTED) {
    atonalControl();
  }
} //_CODE_:pitchmode:772210:

public void pitch_change1(GCustomSlider source, GEvent event) { //_CODE_:pitch:634832:
  freqSlider(source, event);
} //_CODE_:pitch:634832:

public void sinwave_clicked1(GOption source, GEvent event) { //_CODE_:sinwave:493274:
  if (event == GEvent.SELECTED) {
    defaultSin();
  }
} //_CODE_:sinwave:493274:

public void squarewav_clicked1(GOption source, GEvent event) { //_CODE_:squarewav:868981:
  if (event == GEvent.SELECTED) {
    defaultSqr();
  }
} //_CODE_:squarewav:868981:

public void trianglewav_clicked1(GOption source, GEvent event) { //_CODE_:trianglewav:982005:
  if (event == GEvent.SELECTED) {
    defaultTri();
  }
} //_CODE_:trianglewav:982005:

public void sawwav_clicked1(GOption source, GEvent event) { //_CODE_:sawwav:860623:
  if (event == GEvent.SELECTED) {
    defaultSaw();
  }
} //_CODE_:sawwav:860623:

public void rampwav_clicked1(GOption source, GEvent event) { //_CODE_:rampwav:647942:
  if (event == GEvent.SELECTED) {
    defaultRamp();
  }
} //_CODE_:rampwav:647942:

public void stepwav_clicked1(GOption source, GEvent event) { //_CODE_:stepwav:750740:
  if (event == GEvent.SELECTED) {
    defaultStep();
  }
} //_CODE_:stepwav:750740:

public void nowav_clicked1(GOption source, GEvent event) { //_CODE_:nowav:484575:
  println("nowav - GOption >> GEvent." + event + " @ " + millis());
} //_CODE_:nowav:484575:

public void wavcontrol_clicked1(GOption source, GEvent event) { //_CODE_:wavcontrol:638305:
  if (event == GEvent.SELECTED) {
    wavDeviceControlOn();
  }
} //_CODE_:wavcontrol:638305:

public void defaultwavs_clicked1(GOption source, GEvent event) { //_CODE_:defaultwavs:227314:
  if (event == GEvent.SELECTED) {
    wavDeviceControlOff();
  }
} //_CODE_:defaultwavs:227314:

public void reddefaultwav_click1(GImageButton source, GEvent event) { //_CODE_:reddefaultwav:743207:
  println("reddefaultwav - GImageButton >> GEvent." + event + " @ " + millis());
} //_CODE_:reddefaultwav:743207:

public void greystuff_click2(GImageButton source, GEvent event) { //_CODE_:greystuff:598096:
  println("imgButton1 - GImageButton >> GEvent." + event + " @ " + millis());
} //_CODE_:greystuff:598096:

public void wavlock_click2(GImageButton source, GEvent event) { //_CODE_:wavlock:363349:
  println("wavlock - GImageButton >> GEvent." + event + " @ " + millis());
} //_CODE_:wavlock:363349:

public void sliderwavhider_click2(GImageButton source, GEvent event) { //_CODE_:sliderwavhider:617266:
  println("sliderwavhider - GImageButton >> GEvent." + event + " @ " + millis());
} //_CODE_:sliderwavhider:617266:


void createWavGUI() {
wavWindow = GWindow.getWindow(this, "Waveform Editor", 1150, 500, 390, 300, JAVA2D);
  wavWindow.noLoop();
  wavWindow.setActionOnClose(G4P.CLOSE_WINDOW);
  wavWindow.addDrawHandler(this, "waveditordraw");
  wavWindow.addOnCloseHandler(this, "closingWav");
  waveditoroptions = new GToggleGroup();
  wavdevice1 = new GOption(wavWindow, 215, 15, 140, 20);
  wavdevice1.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  wavdevice1.setText("Tonal Device Control");
  wavdevice1.setLocalColorScheme(GCScheme.SCHEME_8);
  wavdevice1.setOpaque(false);
  wavdevice1.addEventHandler(this, "wavdevice1_clicked1");
  pitchmode = new GOption(wavWindow, 30, 15, 170, 20);
  pitchmode.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  pitchmode.setText("Atonal Frequency Control");
  pitchmode.setLocalColorScheme(GCScheme.SCHEME_9);
  pitchmode.setOpaque(false);
  pitchmode.addEventHandler(this, "pitchmode_clicked1");
  waveditoroptions.addControl(wavdevice1);
  wavdevice1.setSelected(true);
  waveditoroptions.addControl(pitchmode);
  pitch = new GCustomSlider(wavWindow, 30, 44, 328, 40, "red_yellow18px");
  pitch.setLimits(1, 0, 2);
  pitch.setNumberFormat(G4P.INTEGER, 0);
  pitch.setLocalColorScheme(GCScheme.SCHEME_8);
  pitch.setOpaque(false);
  pitch.addEventHandler(this, "pitch_change1");
  wavgroup = new GToggleGroup();
  sinwave = new GOption(wavWindow, 25, 184, 120, 20);
  sinwave.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  sinwave.setOpaque(false);
  sinwave.addEventHandler(this, "sinwave_clicked1");
  squarewav = new GOption(wavWindow, 25, 236, 120, 20);
  squarewav.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  squarewav.setOpaque(false);
  squarewav.addEventHandler(this, "squarewav_clicked1");
  trianglewav = new GOption(wavWindow, 145, 184, 120, 20);
  trianglewav.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  trianglewav.setOpaque(false);
  trianglewav.addEventHandler(this, "trianglewav_clicked1");
  sawwav = new GOption(wavWindow, 145, 236, 120, 20);
  sawwav.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  sawwav.setOpaque(false);
  sawwav.addEventHandler(this, "sawwav_clicked1");
  rampwav = new GOption(wavWindow, 265, 184, 100, 20);
  rampwav.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  rampwav.setOpaque(false);
  rampwav.addEventHandler(this, "rampwav_clicked1");
  stepwav = new GOption(wavWindow, 265, 236, 100, 20);
  stepwav.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  stepwav.setOpaque(false);
  stepwav.addEventHandler(this, "stepwav_clicked1");
  nowav = new GOption(wavWindow, 540, 235, 120, 20);
  nowav.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  nowav.setText("option text");
  nowav.setOpaque(false);
  nowav.addEventHandler(this, "nowav_clicked1");
  wavgroup.addControl(sinwave);
  wavgroup.addControl(squarewav);
  wavgroup.addControl(trianglewav);
  wavgroup.addControl(sawwav);
  wavgroup.addControl(rampwav);
  wavgroup.addControl(stepwav);
  wavgroup.addControl(nowav);
  nowav.setSelected(true);
  Wavdevicegroup = new GToggleGroup();
  wavcontrol = new GOption(wavWindow, 20, 100, 120, 20);
  wavcontrol.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  wavcontrol.setText("Device Control");
  wavcontrol.setLocalColorScheme(GCScheme.SCHEME_8);
  wavcontrol.setOpaque(false);
  wavcontrol.addEventHandler(this, "wavcontrol_clicked1");
  defaultwavs = new GOption(wavWindow, 20, 127, 180, 20);
  defaultwavs.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  defaultwavs.setText("Use Defualt Waveforms");
  defaultwavs.setLocalColorScheme(GCScheme.SCHEME_14);
  defaultwavs.setOpaque(false);
  defaultwavs.addEventHandler(this, "defaultwavs_clicked1");
  Wavdevicegroup.addControl(wavcontrol);
  wavcontrol.setSelected(true);
  Wavdevicegroup.addControl(defaultwavs);
  reddefaultwav = new GImageButton(wavWindow, 43, 170, new String[] { "redstuff.png", "redstuff.png", "redstuff.png" } );
  reddefaultwav.addEventHandler(this, "reddefaultwav_click1");
  greystuff = new GImageButton(wavWindow, 43, 170, new String[] { "greyed stuff.png", "greyed stuff.png", "greyed stuff.png" } );
  greystuff.addEventHandler(this, "greystuff_click2");
  wavlock = new GImageButton(wavWindow, 0, 0, 390, 300, new String[] { "WavLockOverlay.png", "WavLockOverlay.png", "WavLockOverlay.png" } );
  wavlock.addEventHandler(this, "wavlock_click2");
  sliderwavhider = new GImageButton(wavWindow, 0, 0, 390, 88, new String[] { "SliderWav.png", "SliderWav.png", "SliderWav.png" } );
  sliderwavhider.addEventHandler(this, "sliderwavhider_click2");
  wavWindow.loop();
  wavOpen=true;
}

GWindow wavWindow;
GToggleGroup waveditoroptions; 
GOption wavdevice1; 
GOption pitchmode; 
GCustomSlider pitch; 
GToggleGroup wavgroup; 
GOption sinwave; 
GOption squarewav; 
GOption trianglewav; 
GOption sawwav; 
GOption rampwav; 
GOption stepwav; 
GOption nowav; 
GToggleGroup Wavdevicegroup; 
GOption wavcontrol; 
GOption defaultwavs; 
GImageButton reddefaultwav; 
GImageButton greystuff; 
GImageButton wavlock; 
GImageButton sliderwavhider; 
