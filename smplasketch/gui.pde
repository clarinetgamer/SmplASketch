/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code inside the event handlers i.e. only
 * use lines between the matching comment tags. e.g.

 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
     // It is safe to enter your event code here  
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */

public void knob1_turn1(GKnob source, GEvent event) { //_CODE_:modeknob:727750:
  //println("knob1 - GKnob >> GEvent." + event + " @ " + millis());
  setModeKnob(source);
} //_CODE_:modeknob:727750:

public void imgButton1_click1(GImageButton source, GEvent event) { //_CODE_:logo:704728:
  //println("imgButton1 - GImageButton >> GEvent." + event + " @ " + millis());
} //_CODE_:logo:704728:

public void wavButton_click1(GImageButton source, GEvent event) { //_CODE_:wavButton:649965:
  //println("imgButton2 - GImageButton >> GEvent." + event + " @ " + millis());
  openWavMenu();
} //_CODE_:wavButton:649965:

public void envButton_click1(GImageButton source, GEvent event) { //_CODE_:envButton:585026:
  //println("imgButton3 - GImageButton >> GEvent." + event + " @ " + millis());
  openEnvMenu();
} //_CODE_:envButton:585026:

public void imgButton_click1(GImageButton source, GEvent event) { //_CODE_:imgButton:805293:
  //println("imgButton5 - GImageButton >> GEvent." + event + " @ " + millis());
  openImgMenu();
} //_CODE_:imgButton:805293:

public void ModeText_click1(GImageButton source, GEvent event) { //_CODE_:ModeText:750609:
  //println("imgButton4 - GImageButton >> GEvent." + event + " @ " + millis());
} //_CODE_:ModeText:750609:

public void VolText_click1(GImageButton source, GEvent event) { //_CODE_:VolText:249241:
  //println("imgButton6 - GImageButton >> GEvent." + event + " @ " + millis());
} //_CODE_:VolText:249241:

public void KnobNums_click1(GImageButton source, GEvent event) { //_CODE_:KnobNums:641804:
  //println("imgButton7 - GImageButton >> GEvent." + event + " @ " + millis());
} //_CODE_:KnobNums:641804:

public void knob2_turn1(GKnob source, GEvent event) { //_CODE_:volknob:873452:
  //println("knob2 - GKnob >> GEvent." + event + " @ " + millis());
  setVolKnob(source);
} //_CODE_:volknob:873452:

public void greenCon_click1(GImageButton source, GEvent event) { //_CODE_:greenCon:794411:
  //println("imgButton8 - GImageButton >> GEvent." + event + " @ " + millis());
} //_CODE_:greenCon:794411:

public void redCon_click1(GImageButton source, GEvent event) { //_CODE_:redCon:582663:
  //println("imgButton9 - GImageButton >> GEvent." + event + " @ " + millis());
} //_CODE_:redCon:582663:

public void helpButton_click1(GImageButton source, GEvent event) { //_CODE_:helpButton:816277:
  //println("helpButton - GImageButton >> GEvent." + event + " @ " + millis());
  openHelpMenu();
} //_CODE_:helpButton:816277:

synchronized public void win_draw1(PApplet appc, GWinData data) { //_CODE_:envWindow:707014:
  appc.background(143, 3, 3);
} //_CODE_:envWindow:707014:

public void checkbox1_clicked1(GCheckbox source, GEvent event) { //_CODE_:checkbox1:403739:
  deviceControlEnv(event);
} //_CODE_:checkbox1:403739:

public void custom_slider1_change1(GCustomSlider source, GEvent event) { //_CODE_:custom_slider1:443042:
  println("custom_slider1 - GCustomSlider >> GEvent." + event + " @ " + millis());
} //_CODE_:custom_slider1:443042:

public void custom_slider2_change1(GCustomSlider source, GEvent event) { //_CODE_:custom_slider2:875688:
  println("custom_slider2 - GCustomSlider >> GEvent." + event + " @ " + millis());
} //_CODE_:custom_slider2:875688:

public void custom_slider3_change1(GCustomSlider source, GEvent event) { //_CODE_:custom_slider3:577796:
  println("custom_slider3 - GCustomSlider >> GEvent." + event + " @ " + millis());
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
  println("imgButton1 - GImageButton >> GEvent." + event + " @ " + millis());
} //_CODE_:hideAllEnv:656167:

public void imgButton2_click1(GImageButton source, GEvent event) { //_CODE_:hideSlidersEnv:513038:
  println("imgButton2 - GImageButton >> GEvent." + event + " @ " + millis());
} //_CODE_:hideSlidersEnv:513038:

synchronized public void win_draw2(PApplet appc, GWinData data) { //_CODE_:wavWindow:973281:
  appc.background(230);
} //_CODE_:wavWindow:973281:

synchronized public void win_draw3(PApplet appc, GWinData data) { //_CODE_:imgWindow:651119:
  appc.background(230);
} //_CODE_:imgWindow:651119:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.GOLD_SCHEME);
  G4P.setMouseOverEnabled(false);
  G4P.setDisplayFont("SignPainter", G4P.BOLD, 18);
  G4P.setSliderFont("SignPainter", G4P.BOLD, 15);
  surface.setTitle("Smpl-A-Sketch");
  modeknob = new GKnob(this, 72, 360, 72, 72, 0.8);
  modeknob.setTurnRange(160, 20);
  modeknob.setTurnMode(GKnob.CTRL_HORIZONTAL);
  modeknob.setSensitivity(1);
  modeknob.setShowArcOnly(false);
  modeknob.setOverArcOnly(false);
  modeknob.setIncludeOverBezel(false);
  modeknob.setShowTrack(true);
  modeknob.setLimits(0.0, 0.0, 2.0);
  modeknob.setNbrTicks(3);
  modeknob.setStickToTicks(true);
  modeknob.setShowTicks(true);
  modeknob.setLocalColorScheme(GCScheme.YELLOW_SCHEME);
  modeknob.setOpaque(false);
  modeknob.addEventHandler(this, "knob1_turn1");
  displaylabel = new GLabel(this, 36, 24, 640, 320);
  displaylabel.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  displaylabel.setLocalColorScheme(GCScheme.SCHEME_8);
  displaylabel.setOpaque(false);
  logo = new GImageButton(this, 224, 364, new String[] { "BigLogo.png", "BigLogo.png", "BigLogo.png" } );
  logo.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  logo.addEventHandler(this, "imgButton1_click1");
  wavButton = new GImageButton(this, 48, 396, 19, 15, new String[] { "wavBg.png", "wavBg.png", "wavBg.png" } );
  wavButton.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  wavButton.addEventHandler(this, "wavButton_click1");
  envButton = new GImageButton(this, 96, 348, 25, 10, new String[] { "envBg.png", "envBg.png", "envBg.png" } );
  envButton.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  envButton.addEventHandler(this, "envButton_click1");
  imgButton = new GImageButton(this, 150, 396, 19, 16, new String[] { "camBg.png", "camBg.png", "camBg.png" } );
  imgButton.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  imgButton.addEventHandler(this, "imgButton_click1");
  ModeText = new GImageButton(this, 84, 433, new String[] { "mode.png", "mode.png", "mode.png" } );
  ModeText.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  ModeText.addEventHandler(this, "ModeText_click1");
  VolText = new GImageButton(this, 588, 433, new String[] { "vol.png", "vol.png", "vol.png" } );
  VolText.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  VolText.addEventHandler(this, "VolText_click1");
  KnobNums = new GImageButton(this, 556, 350, new String[] { "VolKnob.png", "VolKnob.png", "VolKnob.png" } );
  KnobNums.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  KnobNums.addEventHandler(this, "KnobNums_click1");
  volknob = new GKnob(this, 564, 360, 72, 72, 0.8);
  volknob.setTurnRange(110, 70);
  volknob.setTurnMode(GKnob.CTRL_HORIZONTAL);
  volknob.setSensitivity(1);
  volknob.setShowArcOnly(false);
  volknob.setOverArcOnly(false);
  volknob.setIncludeOverBezel(false);
  volknob.setShowTrack(true);
  volknob.setLimits(2.0, 0.0, 10.0);
  volknob.setNbrTicks(11);
  volknob.setStickToTicks(true);
  volknob.setShowTicks(true);
  volknob.setLocalColorScheme(GCScheme.YELLOW_SCHEME);
  volknob.setOpaque(false);
  volknob.addEventHandler(this, "knob2_turn1");
  greenCon = new GImageButton(this, 689, 5, new String[] { "congreen.png", "congreen.png", "congreen.png" } );
  greenCon.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  greenCon.addEventHandler(this, "greenCon_click1");
  redCon = new GImageButton(this, 689, 5, new String[] { "conred.png", "conred.png", "conred.png" } );
  redCon.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  redCon.addEventHandler(this, "redCon_click1");
  helpButton = new GImageButton(this, 11, 5, new String[] { "help.png", "help.png", "help.png" } );
  helpButton.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  helpButton.addEventHandler(this, "helpButton_click1");
  envWindow = GWindow.getWindow(this, "Envelope Editor", 25, 650, 290, 241, JAVA2D);
  envWindow.noLoop();
  envWindow.setActionOnClose(G4P.CLOSE_WINDOW);
  envWindow.addDrawHandler(this, "win_draw1");
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
  wavWindow = GWindow.getWindow(this, "Waveform Editor", 1100, 500, 400, 300, JAVA2D);
  wavWindow.noLoop();
  wavWindow.setActionOnClose(G4P.CLOSE_WINDOW);
  wavWindow.addDrawHandler(this, "win_draw2");
  imgWindow = GWindow.getWindow(this, "PhotoSynthesis", 1100, 0, 400, 400, JAVA2D);
  imgWindow.noLoop();
  imgWindow.setActionOnClose(G4P.CLOSE_WINDOW);
  imgWindow.addDrawHandler(this, "win_draw3");
  envWindow.loop();
  wavWindow.loop();
  imgWindow.loop();
}

// Variable declarations 
// autogenerated do not edit
GKnob modeknob; 
GLabel displaylabel; 
GImageButton logo; 
GImageButton wavButton; 
GImageButton envButton; 
GImageButton imgButton; 
GImageButton ModeText; 
GImageButton VolText; 
GImageButton KnobNums; 
GKnob volknob; 
GImageButton greenCon; 
GImageButton redCon; 
GImageButton helpButton; 
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
GWindow wavWindow;
GWindow imgWindow;
