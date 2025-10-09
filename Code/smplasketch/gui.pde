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
  setModeKnob(source);
} //_CODE_:modeknob:727750:

public void imgButton1_click1(GImageButton source, GEvent event) { //_CODE_:logo:704728:
} //_CODE_:logo:704728:

public void wavButton_click1(GImageButton source, GEvent event) { //_CODE_:wavButton:649965:
  openWavMenu();
} //_CODE_:wavButton:649965:

public void envButton_click1(GImageButton source, GEvent event) { //_CODE_:envButton:585026:
  openEnvMenu();
} //_CODE_:envButton:585026:

public void imgButton_click1(GImageButton source, GEvent event) { //_CODE_:imgButton:805293:
  openImgMenu();
} //_CODE_:imgButton:805293:

public void ModeText_click1(GImageButton source, GEvent event) { //_CODE_:ModeText:750609:
} //_CODE_:ModeText:750609:

public void VolText_click1(GImageButton source, GEvent event) { //_CODE_:VolText:249241:
  //println("imgButton6 - GImageButton >> GEvent." + event + " @ " + millis());
} //_CODE_:VolText:249241:

public void KnobNums_click1(GImageButton source, GEvent event) { //_CODE_:KnobNums:641804:
  //println("imgButton7 - GImageButton >> GEvent." + event + " @ " + millis());
} //_CODE_:KnobNums:641804:

public void knob2_turn1(GKnob source, GEvent event) { //_CODE_:volknob:873452:
  setVolKnob(source);
} //_CODE_:volknob:873452:

public void greenCon_click1(GImageButton source, GEvent event) { //_CODE_:greenCon:794411:
  //println("imgButton8 - GImageButton >> GEvent." + event + " @ " + millis());
} //_CODE_:greenCon:794411:

public void redCon_click1(GImageButton source, GEvent event) { //_CODE_:redCon:582663:
  //println("imgButton9 - GImageButton >> GEvent." + event + " @ " + millis());
} //_CODE_:redCon:582663:

public void helpButton_click1(GImageButton source, GEvent event) { //_CODE_:helpButton:816277:
  openHelpMenu();
} //_CODE_:helpButton:816277:

synchronized public void waveditordraw(PApplet appc, GWinData data) { //_CODE_:wavWindow:973281:
  appc.background(143, 3, 3);
} //_CODE_:wavWindow:973281:

public void wavdevice1_clicked1(GOption source, GEvent event) { //_CODE_:wavdevice1:252560:
if (event == GEvent.SELECTED) {
    tonalControl();
  }
} //_CODE_:wavdevice1:252560:

public void pitchmode_clicked1(GOption source, GEvent event) { //_CODE_:pitchmode:772210:
if (event == GEvent.SELECTED) {
    atonalControl();
  }} //_CODE_:pitchmode:772210:

public void pitch_change1(GCustomSlider source, GEvent event) { //_CODE_:pitch:634832:
  println("custom_slider1 - GCustomSlider >> GEvent." + event + " @ " + millis());
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
  wavWindow = GWindow.getWindow(this, "Waveform Editor", 1150, 500, 390, 300, JAVA2D);
  wavWindow.noLoop();
  wavWindow.setActionOnClose(G4P.CLOSE_WINDOW);
  wavWindow.addDrawHandler(this, "waveditordraw");
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
  pitch.setLimits(440, 100, 780);
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
