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

public void imgButton1_click1(GImageButton source, GEvent event) { //_CODE_:backgroundDarkMode:814029:
  println("imgButton1 - GImageButton >> GEvent." + event + " @ " + millis());
} //_CODE_:backgroundDarkMode:814029:

public void volknob_turn1(GKnob source, GEvent event) { //_CODE_:volknob:531573:
  setVolKnob(source);
} //_CODE_:volknob:531573:

public void modeknob_turn1(GKnob source, GEvent event) { //_CODE_:modeknob:804666:
  setModeKnob(source);
} //_CODE_:modeknob:804666:

public void attack_slider_change1(GCustomSlider source, GEvent event) { //_CODE_:attack_slider:517428:
  sliderUpdate(source, event, 0);
} //_CODE_:attack_slider:517428:

public void sustain_slider_change1(GCustomSlider source, GEvent event) { //_CODE_:sustain_slider:446330:
  sliderUpdate(source, event, 1);
} //_CODE_:sustain_slider:446330:

public void release_slider_change1(GCustomSlider source, GEvent event) { //_CODE_:release_slider:235931:
  sliderUpdate(source, event, 2);
} //_CODE_:release_slider:235931:

public void redWavOverlay_click2(GImageButton source, GEvent event) { //_CODE_:redWavOverlay:451286:
  println("redWavOverlay - GImageButton >> GEvent." + event + " @ " + millis());
} //_CODE_:redWavOverlay:451286:

public void sinButt_clicked1(GOption source, GEvent event) { //_CODE_:sinButt:511167:
  if (event == GEvent.SELECTED) {
    defaultSin();
  }
} //_CODE_:sinButt:511167:

public void triButt_clicked1(GOption source, GEvent event) { //_CODE_:triButt:532566:
  if (event == GEvent.SELECTED) {
    defaultTri();
  }
} //_CODE_:triButt:532566:

public void sqrButt_clicked1(GOption source, GEvent event) { //_CODE_:sqrButt:650107:
  if (event == GEvent.SELECTED) {
    defaultSqr();
  }
} //_CODE_:sqrButt:650107:

public void sawButt_clicked1(GOption source, GEvent event) { //_CODE_:sawButt:584368:
  if (event == GEvent.SELECTED) {
    defaultSaw();
  }
} //_CODE_:sawButt:584368:

public void stepButt_clicked1(GOption source, GEvent event) { //_CODE_:stepButt:289370:
  if (event == GEvent.SELECTED) {
    defaultStep();
  }
} //_CODE_:stepButt:289370:

public void rampButt_clicked1(GOption source, GEvent event) { //_CODE_:rampButt:866973:
  if (event == GEvent.SELECTED) {
    defaultRamp();
  }
} //_CODE_:rampButt:866973:

public void DevControWav_clicked1(GOption source, GEvent event) { //_CODE_:DevControWav:234113:
  if (event == GEvent.SELECTED) {
    wavControl = true;
  }
} //_CODE_:DevControWav:234113:

public void DefaultWav_clicked1(GOption source, GEvent event) { //_CODE_:DefaultWav:337021:
  if (event == GEvent.SELECTED) {
    wavControl = false;
  }
} //_CODE_:DefaultWav:337021:

public void freq_slider1_change1(GCustomSlider source, GEvent event) { //_CODE_:freq_slider1:305465:
  if (event == GEvent.RELEASED) {
    fineAdjust = source.getValueF();
    if (fineAdjust == 0) {
      pitchFine.setText("");
    } else if (fineAdjust > 0) {
      pitchFine.setText("+");
    } else {
      pitchFine.setText("-");
    }
  }
} //_CODE_:freq_slider1:305465:

public void bigtone_slider1_change1(GCustomSlider source, GEvent event) { //_CODE_:bigtone_slider1:797863:
  if (event == GEvent.RELEASED) {
    srIndex = source.getValueI();
    pitch.setText(note[srIndex]);
  }
} //_CODE_:bigtone_slider1:797863:

public void lfored_click2(GImageButton source, GEvent event) { //_CODE_:lfored:748321:
  println("imgButton1 - GImageButton >> GEvent." + event + " @ " + millis());
} //_CODE_:lfored:748321:

public void lfosin_clicked1(GOption source, GEvent event) { //_CODE_:lfosin:814746:
  println("lfosin - GOption >> GEvent." + event + " @ " + millis());
} //_CODE_:lfosin:814746:

public void lfosqr_clicked1(GOption source, GEvent event) { //_CODE_:lfosqr:682065:
  println("lfosqr - GOption >> GEvent." + event + " @ " + millis());
} //_CODE_:lfosqr:682065:

public void lfotri_clicked1(GOption source, GEvent event) { //_CODE_:lfotri:477914:
  println("lfotri - GOption >> GEvent." + event + " @ " + millis());
} //_CODE_:lfotri:477914:

public void lfosaw_clicked1(GOption source, GEvent event) { //_CODE_:lfosaw:915018:
  println("lfosaw - GOption >> GEvent." + event + " @ " + millis());
} //_CODE_:lfosaw:915018:

public void lforamp_clicked1(GOption source, GEvent event) { //_CODE_:lforamp:354875:
  println("lforamp - GOption >> GEvent." + event + " @ " + millis());
} //_CODE_:lforamp:354875:

public void lfostep_clicked1(GOption source, GEvent event) { //_CODE_:lfostep:806592:
  println("lfostep - GOption >> GEvent." + event + " @ " + millis());
} //_CODE_:lfostep:806592:

public void lfosaveslot_clicked1(GOption source, GEvent event) { //_CODE_:lfosaveslot:840679:
  println("lfosaveslot - GOption >> GEvent." + event + " @ " + millis());
} //_CODE_:lfosaveslot:840679:

public void defaultLfo_clicked1(GOption source, GEvent event) { //_CODE_:defaultLFO:562707:
  println("defaultLFO - GOption >> GEvent." + event + " @ " + millis());
} //_CODE_:defaultLFO:562707:

public void lfoLen_slider1_change1(GCustomSlider source, GEvent event) { //_CODE_:lfoLen_slider1:956883:
  println("lfoLen_slider1 - GCustomSlider >> GEvent." + event + " @ " + millis());
} //_CODE_:lfoLen_slider1:956883:

public void lowFreq_slider2_change1(GCustomSlider source, GEvent event) { //_CODE_:lowFreq_slider2:922769:
  println("lowFreq_slider2 - GCustomSlider >> GEvent." + event + " @ " + millis());
} //_CODE_:lowFreq_slider2:922769:

public void rangeFreq_slider1_change1(GCustomSlider source, GEvent event) { //_CODE_:highFreq_slider1:611418:
  println("highFreq_slider1 - GCustomSlider >> GEvent." + event + " @ " + millis());
} //_CODE_:highFreq_slider1:611418:

public void calibration_clicked1(GCheckbox source, GEvent event) { //_CODE_:calibration:261462:
  if (event == GEvent.SELECTED) {
    calibMode = true;
  }
  if (event == GEvent.DESELECTED) {
    calibMode = false;
    filereset.save("calib.jpg");
  }
} //_CODE_:calibration:261462:

public void showCam_clicked1(GOption source, GEvent event) { //_CODE_:showCam:597026:
  if (event == GEvent.SELECTED) {
    camVsCapCalib = true;
  }
} //_CODE_:showCam:597026:

public void capturecali_clicked1(GOption source, GEvent event) { //_CODE_:capturecali:200276:
  if (event == GEvent.SELECTED) {
    camVsCapCalib = false;
  }
} //_CODE_:capturecali:200276:

public void showExtract_clicked1(GCheckbox source, GEvent event) { //_CODE_:showExtract:883300:
  if (event == GEvent.SELECTED) {
    extraction = true;
  } else if (event == GEvent.DESELECTED) {
    extraction = false;
  }
} //_CODE_:showExtract:883300:

public void threshold_slider1_change1(GCustomSlider source, GEvent event) { //_CODE_:threshold_slider1:865497:
  thresholdMod(source, event);
} //_CODE_:threshold_slider1:865497:

public void zoom_slider2_change1(GCustomSlider source, GEvent event) { //_CODE_:zoom_slider2:491766:
  shiftMod(source, event);
} //_CODE_:zoom_slider2:491766:

public void envClear_click3(GImageButton source, GEvent event) { //_CODE_:envClear:356676:
  if (event == GEvent.CLICKED) {
    envMenuStart();
  }
} //_CODE_:envClear:356676:

public void browseButton_click1(GImageButton source, GEvent event) { //_CODE_:browseButton:763920:
  if (event == GEvent.CLICKED) {
    selectPhotosynthesisFile();
  }
} //_CODE_:browseButton:763920:

public void smplButton1_click2(GImageButton source, GEvent event) { //_CODE_:smplButton:548598:
  if (event == GEvent.CLICKED) {
    smpl();
  }
} //_CODE_:smplButton:548598:

public void wavClear_click2(GImageButton source, GEvent event) { //_CODE_:wavClear:280934:
  if (event == GEvent.CLICKED) {
    resetWav();
  }
} //_CODE_:wavClear:280934:

public void resetCalib_click2(GImageButton source, GEvent event) { //_CODE_:resetCalib:215921:
  if (event == GEvent.CLICKED) {
    resetCalib();
  }
} //_CODE_:resetCalib:215921:

public void clearTheLFO_click2(GImageButton source, GEvent event) { //_CODE_:clearTheLFO:939396:
  if (event == GEvent.CLICKED) {
    resetLFO();
  }
} //_CODE_:clearTheLFO:939396:

public void ScreenColor_change1(GCustomSlider source, GEvent event) { //_CODE_:screenColor:548097:
  screenColorControl(source, event);
} //_CODE_:screenColor:548097:

public void lfoColor_change1(GCustomSlider source, GEvent event) { //_CODE_:lfoColor:598006:
  colorControl(source, event, 2);
} //_CODE_:lfoColor:598006:

public void envColor_change1(GCustomSlider source, GEvent event) { //_CODE_:envColor:742676:
  colorControl(source, event, 1);
} //_CODE_:envColor:742676:

public void wavColor_change1(GCustomSlider source, GEvent event) { //_CODE_:wavColor:859202:
  colorControl(source, event, 0);
} //_CODE_:wavColor:859202:

public void thickness_change1(GCustomSlider source, GEvent event) { //_CODE_:thickness:554351:
  if (event == GEvent.RELEASED || event == GEvent.PRESSED || event == GEvent.VALUE_STEADY) {
    thickStroke = source.getValueI();
  }
} //_CODE_:thickness:554351:

public void browseExport_click2(GImageButton source, GEvent event) { //_CODE_:browseExport:709904:
  if (event == GEvent.CLICKED) {
    selectSaveLoc();
  }
} //_CODE_:browseExport:709904:

public void fileName_change1(GTextField source, GEvent event) { //_CODE_:fileName:663355:
  println("fileName - GTextField >> GEvent." + event + " @ " + millis());
} //_CODE_:fileName:663355:

public void saveButt_click2(GImageButton source, GEvent event) { //_CODE_:saveButt:878919:
  println("saveButt - GImageButton >> GEvent." + event + " @ " + millis());
} //_CODE_:saveButt:878919:

public void backButt_click1(GImageButton source, GEvent event) { //_CODE_:backButt:551776:
  println("backButt - GImageButton >> GEvent." + event + " @ " + millis());
} //_CODE_:backButt:551776:

public void playButt_click1(GImageButton source, GEvent event) { //_CODE_:playButt:310979:
  println("playButt - GImageButton >> GEvent." + event + " @ " + millis());
} //_CODE_:playButt:310979:

public void stopButt_click2(GImageButton source, GEvent event) { //_CODE_:stopButt:855839:
  println("stopButt - GImageButton >> GEvent." + event + " @ " + millis());
} //_CODE_:stopButt:855839:

public void forButt_click2(GImageButton source, GEvent event) { //_CODE_:forbutt:485441:
  println("forbutt - GImageButton >> GEvent." + event + " @ " + millis());
} //_CODE_:forbutt:485441:

public void helpButt_click2(GImageButton source, GEvent event) { //_CODE_:helpButt:585685:
  if (event == GEvent.CLICKED) {
    helpButton();
  }
} //_CODE_:helpButt:585685:

public void preset_click2(GImageButton source, GEvent event) { //_CODE_:preset:485718:
  println("preset - GImageButton >> GEvent." + event + " @ " + millis());
} //_CODE_:preset:485718:

public void photsynthesisImage_click2(GImageButton source, GEvent event) { //_CODE_:photsynthesisImage:477057:
  println("imgButton1 - GImageButton >> GEvent." + event + " @ " + millis());
} //_CODE_:photsynthesisImage:477057:

public void redTogButton1_click1(GImageToggleButton source, GEvent event) { //_CODE_:redTogButton1:324535:
  toggleUpdate(event, 0);
} //_CODE_:redTogButton1:324535:

public void blueTogButton1_click1(GImageToggleButton source, GEvent event) { //_CODE_:blueTogButton1:267547:
  toggleUpdate(event, 1);
} //_CODE_:blueTogButton1:267547:

public void greenTogButton1_click1(GImageToggleButton source, GEvent event) { //_CODE_:greenTogButton1:260559:
  toggleUpdate(event, 2);
} //_CODE_:greenTogButton1:260559:

public void yellowTogButton1_click1(GImageToggleButton source, GEvent event) { //_CODE_:yellowTogButton1:283661:
  toggleUpdate(event, 3);
} //_CODE_:yellowTogButton1:283661:

public void purpleTogButton1_click1(GImageToggleButton source, GEvent event) { //_CODE_:purpleTogButton1:610276:
  toggleUpdate(event, 4);
} //_CODE_:purpleTogButton1:610276:

public void orangeTogButton1_click1(GImageToggleButton source, GEvent event) { //_CODE_:orangeTogButton1:547732:
  toggleUpdate(event, 5);
} //_CODE_:orangeTogButton1:547732:

public void reddot_click2(GImageButton source, GEvent event) { //_CODE_:reddot:657772:
  println("reddot - GImageButton >> GEvent." + event + " @ " + millis());
} //_CODE_:reddot:657772:

public void greendot_click2(GImageButton source, GEvent event) { //_CODE_:greendot:438665:
  println("greendot - GImageButton >> GEvent." + event + " @ " + millis());
} //_CODE_:greendot:438665:

public void bluedot_click2(GImageButton source, GEvent event) { //_CODE_:bluedot:934792:
  println("bluedot - GImageButton >> GEvent." + event + " @ " + millis());
} //_CODE_:bluedot:934792:

public void yellowdot_click2(GImageButton source, GEvent event) { //_CODE_:yellowdot:430374:
  println("yellowdot - GImageButton >> GEvent." + event + " @ " + millis());
} //_CODE_:yellowdot:430374:

public void purpledot_click2(GImageButton source, GEvent event) { //_CODE_:purpledot:404593:
  println("purpledot - GImageButton >> GEvent." + event + " @ " + millis());
} //_CODE_:purpledot:404593:

public void orangedot_click2(GImageButton source, GEvent event) { //_CODE_:orangedot:893370:
  println("orangedot - GImageButton >> GEvent." + event + " @ " + millis());
} //_CODE_:orangedot:893370:

public void redon_click2(GImageButton source, GEvent event) { //_CODE_:redon:700357:
  println("redon - GImageButton >> GEvent." + event + " @ " + millis());
} //_CODE_:redon:700357:

public void blueon_click2(GImageButton source, GEvent event) { //_CODE_:blueon:760373:
  println("blueon - GImageButton >> GEvent." + event + " @ " + millis());
} //_CODE_:blueon:760373:

public void greenon_click2(GImageButton source, GEvent event) { //_CODE_:greenon:764788:
  println("greenon - GImageButton >> GEvent." + event + " @ " + millis());
} //_CODE_:greenon:764788:

public void yellowon_click2(GImageButton source, GEvent event) { //_CODE_:yellowon:429709:
  println("yellowon - GImageButton >> GEvent." + event + " @ " + millis());
} //_CODE_:yellowon:429709:

public void prupleon_click2(GImageButton source, GEvent event) { //_CODE_:purpleon:798097:
  println("purplon - GImageButton >> GEvent." + event + " @ " + millis());
} //_CODE_:purpleon:798097:

public void orangeon_click2(GImageButton source, GEvent event) { //_CODE_:orangeon:464327:
  println("orangeon - GImageButton >> GEvent." + event + " @ " + millis());
} //_CODE_:orangeon:464327:

public void dropListRed_click1(GDropList source, GEvent event) { //_CODE_:dropListRed:883689:
  getDropdownData(source, event, 0);
} //_CODE_:dropListRed:883689:

public void dropListGreen_click1(GDropList source, GEvent event) { //_CODE_:dropListGreen:214383:
  getDropdownData(source, event, 1);
} //_CODE_:dropListGreen:214383:

public void dropListBlue_click1(GDropList source, GEvent event) { //_CODE_:dropListBlue:850991:
  getDropdownData(source, event, 2);
} //_CODE_:dropListBlue:850991:

public void dropListYellow_click1(GDropList source, GEvent event) { //_CODE_:dropListYellow:637715:
  getDropdownData(source, event, 3);
} //_CODE_:dropListYellow:637715:

public void dropListPurple_click1(GDropList source, GEvent event) { //_CODE_:dropListPurple:621649:
  getDropdownData(source, event, 4);
} //_CODE_:dropListPurple:621649:

public void dropListOrange_click1(GDropList source, GEvent event) { //_CODE_:dropListOrange:901739:
  getDropdownData(source, event, 5);
} //_CODE_:dropListOrange:901739:

public void modeforKnob_clicked1(GOption source, GEvent event) { //_CODE_:modeforKnob:841963:
  println("ampEnv - GOption >> GEvent." + event + " @ " + millis());
} //_CODE_:modeforKnob:841963:

public void drawforKnob_clicked1(GOption source, GEvent event) { //_CODE_:drawforKnob:784790:
  println("ampLFO - GOption >> GEvent." + event + " @ " + millis());
} //_CODE_:drawforKnob:784790:

public void octave_slider1_change1(GCustomSlider source, GEvent event) { //_CODE_:octave_slider1:947832:
  if (event == GEvent.RELEASED) {
    octIndex = source.getValueI();
  }
} //_CODE_:octave_slider1:947832:

public void envDur_slider1_change1(GCustomSlider source, GEvent event) { //_CODE_:envDur_slider1:860031:
 if (event == GEvent.RELEASED) {
    envMult = source.getValueF();
  }
} //_CODE_:envDur_slider1:860031:

public void showPlayhead_clicked1(GCheckbox source, GEvent event) { //_CODE_:showPlayhead:915718:
if(event == GEvent.SELECTED){
  showPlayLine = true;
} else {
  showPlayLine = false;
}
} //_CODE_:showPlayhead:915718:

public void sustainMode_clicked1(GCheckbox source, GEvent event) { //_CODE_:sustainMode:930059:
  println("susMode - GCheckbox >> GEvent." + event + " @ " + millis());
} //_CODE_:sustainMode:930059:

public void psPitch_clicked1(GCheckbox source, GEvent event) { //_CODE_:psPitch:645877:
  if (event == GEvent.SELECTED) {
    photoPitch = true;
  } else {
    photoPitch = false;
  }
} //_CODE_:psPitch:645877:

public void showEnv_clicked1(GCheckbox source, GEvent event) { //_CODE_:showEnv:225755:
if(event == GEvent.SELECTED) {
drawCombEnv=true;
} else {
drawCombEnv=false;
}
} //_CODE_:showEnv:225755:

public void showLFO_clicked1(GCheckbox source, GEvent event) { //_CODE_:showLFO:932922:
if(event == GEvent.SELECTED) {
drawCombLFO=true;
} else {
drawCombLFO=false;
}
} //_CODE_:showLFO:932922:

public void showWav_clicked1(GCheckbox source, GEvent event) { //_CODE_:showWav:832149:
if(event == GEvent.SELECTED) {
drawCombWav=true;
} else {
drawCombWav=false;
}
} //_CODE_:showWav:832149:

public void expButton1_click2(GImageButton source, GEvent event) { //_CODE_:expButton1:780310:
  println("expButton1 - GImageButton >> GEvent." + event + " @ " + millis());
} //_CODE_:expButton1:780310:

public void lfoOnSwitch_clicked1(GCheckbox source, GEvent event) { //_CODE_:lfoOnSwitch:633091:
if(event == GEvent.SELECTED) {
lfoOn = true;
} else {
  lfoOn = false;
}
} //_CODE_:lfoOnSwitch:633091:

public void lfoNote_clicked1(GCheckbox source, GEvent event) { //_CODE_:lfoNote:226715:
  println("lfoNote - GCheckbox >> GEvent." + event + " @ " + millis());
} //_CODE_:lfoNote:226715:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.YELLOW_SCHEME);
  G4P.setMouseOverEnabled(false);
  G4P.setDisplayFont("SignPainter", G4P.PLAIN, 19);
  G4P.setInputFont("SignPainter", G4P.BOLD, 30);
  G4P.setSliderFont("Arial", G4P.PLAIN, 6);
  surface.setTitle("SmplASketch");
  backgroundDarkMode = new GImageButton(this, -1, 0, new String[] { "backgroundDarkMode.png", "backgroundDarkMode.png", "backgroundDarkMode.png" } );
  backgroundDarkMode.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  backgroundDarkMode.addEventHandler(this, "imgButton1_click1");
  volknob = new GKnob(this, 996, 475, 100, 100, 0.8);
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
  volknob.setEasing(2.0);
  volknob.setOpaque(false);
  volknob.addEventHandler(this, "volknob_turn1");
  modeknob = new GKnob(this, 424, 475, 100, 100, 0.8);
  modeknob.setTurnRange(140, 50);
  modeknob.setTurnMode(GKnob.CTRL_HORIZONTAL);
  modeknob.setSensitivity(1);
  modeknob.setShowArcOnly(false);
  modeknob.setOverArcOnly(false);
  modeknob.setIncludeOverBezel(false);
  modeknob.setShowTrack(true);
  modeknob.setLimits(0.0, 0.0, 4.0);
  modeknob.setNbrTicks(5);
  modeknob.setStickToTicks(true);
  modeknob.setShowTicks(true);
  modeknob.setOpaque(false);
  modeknob.addEventHandler(this, "modeknob_turn1");
  attack_slider = new GCustomSlider(this, 350, 660, 300, 40, "grey_blue");
  attack_slider.setLimits(5.0, 0.0, 10.0);
  attack_slider.setNumberFormat(G4P.DECIMAL, 2);
  attack_slider.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  attack_slider.setOpaque(false);
  attack_slider.addEventHandler(this, "attack_slider_change1");
  sustain_slider = new GCustomSlider(this, 350, 715, 300, 40, "grey_blue");
  sustain_slider.setLimits(5.0, 0.0, 10.0);
  sustain_slider.setNumberFormat(G4P.DECIMAL, 2);
  sustain_slider.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  sustain_slider.setOpaque(false);
  sustain_slider.addEventHandler(this, "sustain_slider_change1");
  release_slider = new GCustomSlider(this, 350, 770, 300, 40, "grey_blue");
  release_slider.setLimits(5.0, 0.0, 10.0);
  release_slider.setNumberFormat(G4P.DECIMAL, 2);
  release_slider.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  release_slider.setOpaque(false);
  release_slider.addEventHandler(this, "release_slider_change1");
  redWavOverlay = new GImageButton(this, 42, 719, 269, 101, new String[] { "wavgray.png", "wavgray.png", "wavgray.png" } );
  redWavOverlay.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  redWavOverlay.addEventHandler(this, "redWavOverlay_click2");
  togGroupwav = new GToggleGroup();
  sinButt = new GOption(this, 25, 720, 90, 45);
  sinButt.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  sinButt.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  sinButt.setOpaque(false);
  sinButt.addEventHandler(this, "sinButt_clicked1");
  triButt = new GOption(this, 123, 720, 90, 45);
  triButt.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  triButt.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  triButt.setOpaque(false);
  triButt.addEventHandler(this, "triButt_clicked1");
  sqrButt = new GOption(this, 25, 774, 90, 45);
  sqrButt.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  sqrButt.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  sqrButt.setOpaque(false);
  sqrButt.addEventHandler(this, "sqrButt_clicked1");
  sawButt = new GOption(this, 123, 774, 90, 45);
  sawButt.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  sawButt.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  sawButt.setOpaque(false);
  sawButt.addEventHandler(this, "sawButt_clicked1");
  stepButt = new GOption(this, 223, 774, 90, 45);
  stepButt.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  stepButt.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  stepButt.setOpaque(false);
  stepButt.addEventHandler(this, "stepButt_clicked1");
  rampButt = new GOption(this, 223, 720, 90, 45);
  rampButt.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  rampButt.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  rampButt.setOpaque(false);
  rampButt.addEventHandler(this, "rampButt_clicked1");
  togGroupwav.addControl(sinButt);
  sinButt.setSelected(true);
  togGroupwav.addControl(triButt);
  togGroupwav.addControl(sqrButt);
  togGroupwav.addControl(sawButt);
  togGroupwav.addControl(stepButt);
  togGroupwav.addControl(rampButt);
  togGroupWavDevControl = new GToggleGroup();
  DevControWav = new GOption(this, 35, 690, 136, 20);
  DevControWav.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  DevControWav.setText(" ");
  DevControWav.setLocalColorScheme(GCScheme.SCHEME_8);
  DevControWav.setOpaque(false);
  DevControWav.addEventHandler(this, "DevControWav_clicked1");
  DefaultWav = new GOption(this, 175, 690, 131, 20);
  DefaultWav.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  DefaultWav.setText(" ");
  DefaultWav.setLocalColorScheme(GCScheme.SCHEME_8);
  DefaultWav.setOpaque(false);
  DefaultWav.addEventHandler(this, "DefaultWav_clicked1");
  togGroupWavDevControl.addControl(DevControWav);
  DevControWav.setSelected(true);
  togGroupWavDevControl.addControl(DefaultWav);
  freq_slider1 = new GCustomSlider(this, 14, 623, 302, 40, "grey_blue");
  freq_slider1.setLimits(0.0, -0.2, 0.2);
  freq_slider1.setNumberFormat(G4P.DECIMAL, 2);
  freq_slider1.setOpaque(false);
  freq_slider1.addEventHandler(this, "freq_slider1_change1");
  bigtone_slider1 = new GCustomSlider(this, 14, 570, 304, 40, "grey_blue");
  bigtone_slider1.setLimits(6, 0, 12);
  bigtone_slider1.setNbrTicks(13);
  bigtone_slider1.setStickToTicks(true);
  bigtone_slider1.setNumberFormat(G4P.INTEGER, 0);
  bigtone_slider1.setOpaque(false);
  bigtone_slider1.addEventHandler(this, "bigtone_slider1_change1");
  lfored = new GImageButton(this, 892, 715, 269, 101, new String[] { "wavgray.png", "wavgray.png", "wavgray.png" } );
  lfored.addEventHandler(this, "lfored_click2");
  lfoGroup1 = new GToggleGroup();
  lfosin = new GOption(this, 873, 716, 92, 45);
  lfosin.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  lfosin.setOpaque(false);
  lfosin.addEventHandler(this, "lfosin_clicked1");
  lfosqr = new GOption(this, 873, 769, 92, 45);
  lfosqr.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  lfosqr.setOpaque(false);
  lfosqr.addEventHandler(this, "lfosqr_clicked1");
  lfotri = new GOption(this, 974, 716, 89, 46);
  lfotri.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  lfotri.setOpaque(false);
  lfotri.addEventHandler(this, "lfotri_clicked1");
  lfosaw = new GOption(this, 974, 770, 89, 44);
  lfosaw.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  lfosaw.setOpaque(false);
  lfosaw.addEventHandler(this, "lfosaw_clicked1");
  lforamp = new GOption(this, 1071, 716, 89, 44);
  lforamp.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  lforamp.setOpaque(false);
  lforamp.addEventHandler(this, "lforamp_clicked1");
  lfostep = new GOption(this, 1071, 770, 90, 45);
  lfostep.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  lfostep.setOpaque(false);
  lfostep.addEventHandler(this, "lfostep_clicked1");
  lfoGroup1.addControl(lfosin);
  lfosin.setSelected(true);
  lfoGroup1.addControl(lfosqr);
  lfoGroup1.addControl(lfotri);
  lfoGroup1.addControl(lfosaw);
  lfoGroup1.addControl(lforamp);
  lfoGroup1.addControl(lfostep);
  lfoControlgGroup1 = new GToggleGroup();
  lfosaveslot = new GOption(this, 888, 687, 127, 20);
  lfosaveslot.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  lfosaveslot.setOpaque(false);
  lfosaveslot.addEventHandler(this, "lfosaveslot_clicked1");
  defaultLFO = new GOption(this, 1028, 687, 124, 20);
  defaultLFO.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  defaultLFO.setOpaque(false);
  defaultLFO.addEventHandler(this, "defaultLfo_clicked1");
  lfoControlgGroup1.addControl(lfosaveslot);
  lfosaveslot.setSelected(true);
  lfoControlgGroup1.addControl(defaultLFO);
  lfoLen_slider1 = new GCustomSlider(this, 690, 660, 160, 40, "grey_blue");
  lfoLen_slider1.setLimits(0.5, 0.0, 1.0);
  lfoLen_slider1.setNumberFormat(G4P.DECIMAL, 2);
  lfoLen_slider1.setOpaque(false);
  lfoLen_slider1.addEventHandler(this, "lfoLen_slider1_change1");
  lowFreq_slider2 = new GCustomSlider(this, 691, 715, 160, 40, "grey_blue");
  lowFreq_slider2.setLimits(0.5, 0.0, 1.0);
  lowFreq_slider2.setNumberFormat(G4P.DECIMAL, 2);
  lowFreq_slider2.setOpaque(false);
  lowFreq_slider2.addEventHandler(this, "lowFreq_slider2_change1");
  highFreq_slider1 = new GCustomSlider(this, 690, 770, 160, 40, "grey_blue");
  highFreq_slider1.setLimits(0.5, 0.0, 1.0);
  highFreq_slider1.setNumberFormat(G4P.DECIMAL, 2);
  highFreq_slider1.setOpaque(false);
  highFreq_slider1.addEventHandler(this, "rangeFreq_slider1_change1");
  calibration = new GCheckbox(this, 1405, 380, 88, 20);
  calibration.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  calibration.setOpaque(false);
  calibration.addEventHandler(this, "calibration_clicked1");
  calibGroup1 = new GToggleGroup();
  showCam = new GOption(this, 1194, 407, 90, 20);
  showCam.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  showCam.setOpaque(false);
  showCam.addEventHandler(this, "showCam_clicked1");
  capturecali = new GOption(this, 1194, 432, 125, 20);
  capturecali.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  capturecali.setOpaque(false);
  capturecali.addEventHandler(this, "capturecali_clicked1");
  calibGroup1.addControl(showCam);
  showCam.setSelected(true);
  calibGroup1.addControl(capturecali);
  showExtract = new GCheckbox(this, 1195, 460, 90, 20);
  showExtract.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  showExtract.setOpaque(false);
  showExtract.addEventHandler(this, "showExtract_clicked1");
  threshold_slider1 = new GCustomSlider(this, 1331, 396, 155, 40, "grey_blue");
  threshold_slider1.setLimits(0.791, 0.591, 0.991);
  threshold_slider1.setNumberFormat(G4P.DECIMAL, 2);
  threshold_slider1.setOpaque(false);
  threshold_slider1.addEventHandler(this, "threshold_slider1_change1");
  zoom_slider2 = new GCustomSlider(this, 1330, 438, 157, 40, "grey_blue");
  zoom_slider2.setLimits(1.0, 0.8, 1.2);
  zoom_slider2.setNumberFormat(G4P.DECIMAL, 2);
  zoom_slider2.setOpaque(false);
  zoom_slider2.addEventHandler(this, "zoom_slider2_change1");
  envClear = new GImageButton(this, 1198, 315, new String[] { "ClearEnvButt.png", "ClearEnvButt.png", "ClearEnvButt.png" } );
  envClear.addEventHandler(this, "envClear_click3");
  FileName = new GLabel(this, 1258, 522, 240, 18);
  FileName.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  FileName.setText("Select File To Analyze");
  FileName.setLocalColorScheme(GCScheme.SCHEME_8);
  FileName.setOpaque(false);
  browseButton = new GImageButton(this, 1190, 520, 64, 22, new String[] { "Browse.png", "Browse.png", "Browse.png" } );
  browseButton.addEventHandler(this, "browseButton_click1");
  smplButton = new GImageButton(this, 792, 8, new String[] { "Smplbutton.png", "Smplbutton.png", "Smplbutton.png" } );
  smplButton.addEventHandler(this, "smplButton1_click2");
  wavClear = new GImageButton(this, 1198, 342, new String[] { "clearwav.png", "clearwav.png", "clearwav.png" } );
  wavClear.addEventHandler(this, "wavClear_click2");
  resetCalib = new GImageButton(this, 1349, 315, new String[] { "Reset Calib.png", "Reset Calib.png", "Reset Calib.png" } );
  resetCalib.addEventHandler(this, "resetCalib_click2");
  clearTheLFO = new GImageButton(this, 1349, 342, new String[] { "clearLFO.png", "clearLFO.png", "clearLFO.png" } );
  clearTheLFO.addEventHandler(this, "clearTheLFO_click2");
  screenColor = new GCustomSlider(this, 1190, 232, 115, 15, "red_yellow18px");
  screenColor.setLimits(1, 0, 3);
  screenColor.setNbrTicks(4);
  screenColor.setStickToTicks(true);
  screenColor.setNumberFormat(G4P.INTEGER, 0);
  screenColor.setOpaque(false);
  screenColor.addEventHandler(this, "ScreenColor_change1");
  lfoColor = new GCustomSlider(this, 1207, 190, 272, 18, "red_yellow18px");
  lfoColor.setLimits(4, 0, 9);
  lfoColor.setNbrTicks(10);
  lfoColor.setStickToTicks(true);
  lfoColor.setShowTicks(true);
  lfoColor.setNumberFormat(G4P.INTEGER, 0);
  lfoColor.setOpaque(false);
  lfoColor.addEventHandler(this, "lfoColor_change1");
  envColor = new GCustomSlider(this, 1207, 149, 272, 18, "red_yellow18px");
  envColor.setLimits(2, 0, 9);
  envColor.setNbrTicks(10);
  envColor.setStickToTicks(true);
  envColor.setShowTicks(true);
  envColor.setNumberFormat(G4P.INTEGER, 0);
  envColor.setOpaque(false);
  envColor.addEventHandler(this, "envColor_change1");
  wavColor = new GCustomSlider(this, 1207, 99, 272, 18, "red_yellow18px");
  wavColor.setLimits(0, 0, 9);
  wavColor.setNbrTicks(10);
  wavColor.setStickToTicks(true);
  wavColor.setShowTicks(true);
  wavColor.setNumberFormat(G4P.INTEGER, 0);
  wavColor.setOpaque(false);
  wavColor.addEventHandler(this, "wavColor_change1");
  thickness = new GCustomSlider(this, 1386, 244, 100, 12, "grey_blue");
  thickness.setLimits(2, 1, 10);
  thickness.setNumberFormat(G4P.INTEGER, 0);
  thickness.setOpaque(false);
  thickness.addEventHandler(this, "thickness_change1");
  browseExport = new GImageButton(this, 1190, 287, 64, 22, new String[] { "Browse.png", "Browse.png", "Browse.png" } );
  browseExport.addEventHandler(this, "browseExport_click2");
  exportLocLabel = new GLabel(this, 1258, 289, 241, 20);
  exportLocLabel.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  exportLocLabel.setText("Select Export Location");
  exportLocLabel.setLocalColorScheme(GCScheme.SCHEME_8);
  exportLocLabel.setOpaque(false);
  fileName = new GTextField(this, 30, 15, 200, 30, G4P.SCROLLBARS_NONE);
  fileName.setPromptText("       SmplName");
  fileName.setLocalColorScheme(GCScheme.RED_SCHEME);
  fileName.setOpaque(true);
  fileName.addEventHandler(this, "fileName_change1");
  saveButt = new GImageButton(this, 260, 11, new String[] { "savebutt.png", "savebutt.png", "savebutt.png" } );
  saveButt.addEventHandler(this, "saveButt_click2");
  backButt = new GImageButton(this, 618, 11, new String[] { "backButt.png", "backButt.png", "backButt.png" } );
  backButt.addEventHandler(this, "backButt_click1");
  playButt = new GImageButton(this, 663, 11, new String[] { "PlayButt.png", "PlayButt.png", "PlayButt.png" } );
  playButt.addEventHandler(this, "playButt_click1");
  stopButt = new GImageButton(this, 705, 11, new String[] { "StopButt.png", "StopButt.png", "StopButt.png" } );
  stopButt.addEventHandler(this, "stopButt_click2");
  forbutt = new GImageButton(this, 748, 11, new String[] { "ForwardButt.png", "ForwardButt.png", "ForwardButt.png" } );
  forbutt.addEventHandler(this, "forButt_click2");
  helpButt = new GImageButton(this, 1470, 17, new String[] { "helpButt.png", "helpButt.png", "helpButt.png" } );
  helpButt.addEventHandler(this, "helpButt_click2");
  preset = new GImageButton(this, 307, 11, new String[] { "openPreset.png", "openPreset.png", "openPreset.png" } );
  preset.addEventHandler(this, "preset_click2");
  photsynthesisImage = new GImageButton(this, 1241, 662, 218, 159, new String[] { "blank.jpg", "blank.jpg", "blank.jpg" } );
  photsynthesisImage.addEventHandler(this, "photsynthesisImage_click2");
  redTogButton1 = new GImageToggleButton(this, 1200, 583);
  redTogButton1.addEventHandler(this, "redTogButton1_click1");
  blueTogButton1 = new GImageToggleButton(this, 1300, 583);
  blueTogButton1.addEventHandler(this, "blueTogButton1_click1");
  greenTogButton1 = new GImageToggleButton(this, 1250, 583);
  greenTogButton1.addEventHandler(this, "greenTogButton1_click1");
  yellowTogButton1 = new GImageToggleButton(this, 1350, 583);
  yellowTogButton1.addEventHandler(this, "yellowTogButton1_click1");
  purpleTogButton1 = new GImageToggleButton(this, 1400, 583);
  purpleTogButton1.addEventHandler(this, "purpleTogButton1_click1");
  orangeTogButton1 = new GImageToggleButton(this, 1450, 583);
  orangeTogButton1.addEventHandler(this, "orangeTogButton1_click1");
  reddot = new GImageButton(this, 1209, 555, new String[] { "red.png", "red.png", "red.png" } );
  reddot.addEventHandler(this, "reddot_click2");
  greendot = new GImageButton(this, 1258, 555, new String[] { "green.png", "green.png", "green.png" } );
  greendot.addEventHandler(this, "greendot_click2");
  bluedot = new GImageButton(this, 1308, 555, new String[] { "blue.png", "blue.png", "blue.png" } );
  bluedot.addEventHandler(this, "bluedot_click2");
  yellowdot = new GImageButton(this, 1358, 555, new String[] { "yellow.png", "yellow.png", "yellow.png" } );
  yellowdot.addEventHandler(this, "yellowdot_click2");
  purpledot = new GImageButton(this, 1408, 555, new String[] { "pruple.png", "pruple.png", "pruple.png" } );
  purpledot.addEventHandler(this, "purpledot_click2");
  orangedot = new GImageButton(this, 1459, 555, new String[] { "orange.png", "orange.png", "orange.png" } );
  orangedot.addEventHandler(this, "orangedot_click2");
  redon = new GImageButton(this, 1209, 555, new String[] { "redPhoto.png", "redPhoto.png", "redPhoto.png" } );
  redon.addEventHandler(this, "redon_click2");
  blueon = new GImageButton(this, 1308, 555, new String[] { "bluePhoto.png", "bluePhoto.png", "bluePhoto.png" } );
  blueon.addEventHandler(this, "blueon_click2");
  greenon = new GImageButton(this, 1258, 555, new String[] { "greenPhoto.png", "greenPhoto.png", "greenPhoto.png" } );
  greenon.addEventHandler(this, "greenon_click2");
  yellowon = new GImageButton(this, 1358, 555, new String[] { "yellowPhoto.png", "yellowPhoto.png", "yellowPhoto.png" } );
  yellowon.addEventHandler(this, "yellowon_click2");
  purpleon = new GImageButton(this, 1408, 555, new String[] { "purplePhoto.png", "purplePhoto.png", "purplePhoto.png" } );
  purpleon.addEventHandler(this, "prupleon_click2");
  orangeon = new GImageButton(this, 1459, 555, new String[] { "orangePhoto.png", "orangePhoto.png", "orangePhoto.png" } );
  orangeon.addEventHandler(this, "orangeon_click2");
  dropListRed = new GDropList(this, 1205, 636, 31, 119, 6, 8);
  dropListRed.setItems(loadStrings("list_883689"), 0);
  dropListRed.setLocalColorScheme(GCScheme.RED_SCHEME);
  dropListRed.addEventHandler(this, "dropListRed_click1");
  dropListGreen = new GDropList(this, 1255, 636, 31, 119, 6, 8);
  dropListGreen.setItems(loadStrings("list_214383"), 1);
  dropListGreen.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  dropListGreen.addEventHandler(this, "dropListGreen_click1");
  dropListBlue = new GDropList(this, 1305, 636, 31, 119, 6, 8);
  dropListBlue.setItems(loadStrings("list_850991"), 2);
  dropListBlue.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  dropListBlue.addEventHandler(this, "dropListBlue_click1");
  dropListYellow = new GDropList(this, 1355, 636, 31, 119, 6, 8);
  dropListYellow.setItems(loadStrings("list_637715"), 3);
  dropListYellow.addEventHandler(this, "dropListYellow_click1");
  dropListPurple = new GDropList(this, 1405, 636, 31, 119, 6, 8);
  dropListPurple.setItems(loadStrings("list_621649"), 4);
  dropListPurple.setLocalColorScheme(GCScheme.PURPLE_SCHEME);
  dropListPurple.addEventHandler(this, "dropListPurple_click1");
  dropListOrange = new GDropList(this, 1455, 636, 31, 119, 6, 8);
  dropListOrange.setItems(loadStrings("list_901739"), 5);
  dropListOrange.setLocalColorScheme(GCScheme.ORANGE_SCHEME);
  dropListOrange.addEventHandler(this, "dropListOrange_click1");
  modeDisplay = new GLabel(this, 155, 93, 143, 20);
  modeDisplay.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  modeDisplay.setText("Current Mode");
  modeDisplay.setLocalColorScheme(GCScheme.SCHEME_8);
  modeDisplay.setOpaque(false);
  knobGroup1 = new GToggleGroup();
  modeforKnob = new GOption(this, 33, 314, 120, 20);
  modeforKnob.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  modeforKnob.setOpaque(false);
  modeforKnob.addEventHandler(this, "modeforKnob_clicked1");
  drawforKnob = new GOption(this, 195, 314, 120, 20);
  drawforKnob.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  drawforKnob.setOpaque(false);
  drawforKnob.addEventHandler(this, "drawforKnob_clicked1");
  knobGroup1.addControl(modeforKnob);
  modeforKnob.setSelected(true);
  knobGroup1.addControl(drawforKnob);
  pitch = new GLabel(this, 246, 467, 57, 57);
  pitch.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  pitch.setText("C");
  pitch.setOpaque(false);
  octave_slider1 = new GCustomSlider(this, 31, 407, 267, 40, "grey_blue");
  octave_slider1.setLimits(2.0, 0.0, 4.0);
  octave_slider1.setNbrTicks(5);
  octave_slider1.setStickToTicks(true);
  octave_slider1.setNumberFormat(G4P.DECIMAL, 2);
  octave_slider1.setOpaque(false);
  octave_slider1.addEventHandler(this, "octave_slider1_change1");
  envDur_slider1 = new GCustomSlider(this, 31, 355, 267, 40, "grey_blue");
  envDur_slider1.setLimits(1.25, 0.5, 2.0);
  envDur_slider1.setNumberFormat(G4P.DECIMAL, 2);
  envDur_slider1.setOpaque(false);
  envDur_slider1.addEventHandler(this, "envDur_slider1_change1");
  showPlayhead = new GCheckbox(this, 18, 465, 137, 24);
  showPlayhead.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  showPlayhead.setOpaque(false);
  showPlayhead.addEventHandler(this, "showPlayhead_clicked1");
  sustainMode = new GCheckbox(this, 18, 489, 212, 23);
  sustainMode.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  sustainMode.setOpaque(false);
  sustainMode.addEventHandler(this, "sustainMode_clicked1");
  psPitch = new GCheckbox(this, 18, 512, 213, 22);
  psPitch.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  psPitch.setOpaque(false);
  psPitch.addEventHandler(this, "psPitch_clicked1");
  psPitch.setSelected(true);
  showEnv = new GCheckbox(this, 31, 229, 129, 20);
  showEnv.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  showEnv.setOpaque(false);
  showEnv.addEventHandler(this, "showEnv_clicked1");
  showLFO = new GCheckbox(this, 189, 229, 98, 20);
  showLFO.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  showLFO.setOpaque(false);
  showLFO.addEventHandler(this, "showLFO_clicked1");
  showWav = new GCheckbox(this, 96, 257, 135, 20);
  showWav.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  showWav.setOpaque(false);
  showWav.addEventHandler(this, "showWav_clicked1");
  showWav.setSelected(true);
  wavSlot = new GLabel(this, 62, 155, 80, 20);
  wavSlot.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  wavSlot.setText("Empty");
  wavSlot.setLocalColorScheme(GCScheme.SCHEME_15);
  wavSlot.setOpaque(false);
  LFOSlot = new GLabel(this, 197, 155, 80, 20);
  LFOSlot.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  LFOSlot.setText("Empty");
  LFOSlot.setLocalColorScheme(GCScheme.SCHEME_8);
  LFOSlot.setOpaque(false);
  expButton1 = new GImageButton(this, 1155, 57, new String[] { "expand.png", "expand.png", "expand.png" } );
  expButton1.addEventHandler(this, "expButton1_click2");
  pitchFine = new GLabel(this, 281, 467, 21, 19);
  pitchFine.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  pitchFine.setText(" ");
  pitchFine.setOpaque(false);
  lfoOnSwitch = new GCheckbox(this, 888, 656, 90, 20);
  lfoOnSwitch.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  lfoOnSwitch.setOpaque(false);
  lfoOnSwitch.addEventHandler(this, "lfoOnSwitch_clicked1");
  lfoNote = new GCheckbox(this, 1029, 656, 130, 20);
  lfoNote.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  lfoNote.setOpaque(false);
  lfoNote.addEventHandler(this, "lfoNote_clicked1");
}

// Variable declarations 
// autogenerated do not edit
GImageButton backgroundDarkMode; 
GKnob volknob; 
GKnob modeknob; 
GCustomSlider attack_slider; 
GCustomSlider sustain_slider; 
GCustomSlider release_slider; 
GImageButton redWavOverlay; 
GToggleGroup togGroupwav; 
GOption sinButt; 
GOption triButt; 
GOption sqrButt; 
GOption sawButt; 
GOption stepButt; 
GOption rampButt; 
GToggleGroup togGroupWavDevControl; 
GOption DevControWav; 
GOption DefaultWav; 
GCustomSlider freq_slider1; 
GCustomSlider bigtone_slider1; 
GImageButton lfored; 
GToggleGroup lfoGroup1; 
GOption lfosin; 
GOption lfosqr; 
GOption lfotri; 
GOption lfosaw; 
GOption lforamp; 
GOption lfostep; 
GToggleGroup lfoControlgGroup1; 
GOption lfosaveslot; 
GOption defaultLFO; 
GCustomSlider lfoLen_slider1; 
GCustomSlider lowFreq_slider2; 
GCustomSlider highFreq_slider1; 
GCheckbox calibration; 
GToggleGroup calibGroup1; 
GOption showCam; 
GOption capturecali; 
GCheckbox showExtract; 
GCustomSlider threshold_slider1; 
GCustomSlider zoom_slider2; 
GImageButton envClear; 
GLabel FileName; 
GImageButton browseButton; 
GImageButton smplButton; 
GImageButton wavClear; 
GImageButton resetCalib; 
GImageButton clearTheLFO; 
GCustomSlider screenColor; 
GCustomSlider lfoColor; 
GCustomSlider envColor; 
GCustomSlider wavColor; 
GCustomSlider thickness; 
GImageButton browseExport; 
GLabel exportLocLabel; 
GTextField fileName; 
GImageButton saveButt; 
GImageButton backButt; 
GImageButton playButt; 
GImageButton stopButt; 
GImageButton forbutt; 
GImageButton helpButt; 
GImageButton preset; 
GImageButton photsynthesisImage; 
GImageToggleButton redTogButton1; 
GImageToggleButton blueTogButton1; 
GImageToggleButton greenTogButton1; 
GImageToggleButton yellowTogButton1; 
GImageToggleButton purpleTogButton1; 
GImageToggleButton orangeTogButton1; 
GImageButton reddot; 
GImageButton greendot; 
GImageButton bluedot; 
GImageButton yellowdot; 
GImageButton purpledot; 
GImageButton orangedot; 
GImageButton redon; 
GImageButton blueon; 
GImageButton greenon; 
GImageButton yellowon; 
GImageButton purpleon; 
GImageButton orangeon; 
GDropList dropListRed; 
GDropList dropListGreen; 
GDropList dropListBlue; 
GDropList dropListYellow; 
GDropList dropListPurple; 
GDropList dropListOrange; 
GLabel modeDisplay; 
GToggleGroup knobGroup1; 
GOption modeforKnob; 
GOption drawforKnob; 
GLabel pitch; 
GCustomSlider octave_slider1; 
GCustomSlider envDur_slider1; 
GCheckbox showPlayhead; 
GCheckbox sustainMode; 
GCheckbox psPitch; 
GCheckbox showEnv; 
GCheckbox showLFO; 
GCheckbox showWav; 
GLabel wavSlot; 
GLabel LFOSlot; 
GImageButton expButton1; 
GLabel pitchFine; 
GCheckbox lfoOnSwitch; 
GCheckbox lfoNote; 
