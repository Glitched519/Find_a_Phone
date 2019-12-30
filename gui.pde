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

public void iOSSelected(GOption source, GEvent event) { //_CODE_:iOS:339460:
  osChosen = "iOS";
} //_CODE_:iOS:339460:

public void eitherOSSelected(GOption source, GEvent event) { //_CODE_:eitherOS:695765:
  String[] osArray = {"iOS","Android"};
  osChosen = osArray[round(random(0,1))];
} //_CODE_:eitherOS:695765:

public void AndroidSelected(GOption source, GEvent event) { //_CODE_:Android:944640:
  osChosen = "Android";
} 


//public void checkbox1_clicked1(GCheckbox source, GEvent event) } //_CODE_:Android:944640:

public void wantJackTicked(GCheckbox source, GEvent event) { //_CODE_:wantJack:778785:
  if (source.isSelected()) {
    headphoneJack = "yes";
  } else {
    headphoneJack = "no";
  }
} //_CODE_:wantJack:778785:

public void anyChoiceClicked(GOption source, GEvent event) { //_CODE_:anyChoice:656009:
  String[] displayArray = {"notch", "hole", "bezel-free", "bezel"};
  displayDesign = displayArray[round(random(0, displayArray.length-1))];
}
//public void notchChoiceClicked(GOption source, GEvent event) } //_CODE_:anyChoice:656009:

public void notchChoiceClicked(GOption source, GEvent event) { //_CODE_:notchChoice:460068:
  displayDesign = "notch";
} //_CODE_:notchChoice:460068:

public void holePunchChoiceClicked(GOption source, GEvent event) { //_CODE_:holePunchChoice:218879:
  displayDesign = "hole";
}

//public void bezelFreeChoiceClicked(GOption source, GEvent event) } //_CODE_:holePunchChoice:218879:

public void bezelFreeChoiceClicked(GOption source, GEvent event) { //_CODE_:bezelFreeChoice:598091:
  displayDesign = "bezel-free";
} //_CODE_:bezelFreeChoice:598091:

public void bezelChoiceClicked(GOption source, GEvent event) { //_CODE_:bezelChoice:523790:
  displayDesign = "bezel";
} //_CODE_:bezelChoice:523790:

public void eitherChoiceClicked(GOption source, GEvent event) { //_CODE_:eitherChoice:560950:
  String[] screenArray = {"OLED", "LCD"};
  screenPanel = screenArray[round(random(0, 1))];
} //_CODE_:eitherChoice:560950:

public void OLEDChoiceClicked(GOption source, GEvent event) { //_CODE_:OLEDChoice:214362:
  screenPanel = "OLED";
} //_CODE_:OLEDChoice:214362:

public void LCDChoiceClicked(GOption source, GEvent event) { //_CODE_:LCDChoice:724915:
  screenPanel = "LCD";
} //_CODE_:LCDChoice:724915:

public void size5Clicked(GOption source, GEvent event) { //_CODE_:size5:754105:
  screenSize = 5;
} //_CODE_:size5:754105:

public void size4Clicked(GOption source, GEvent event) { //_CODE_:size4:599349:
  screenSize = 4;
} //_CODE_:size4:599349:

public void size3Clicked(GOption source, GEvent event) { //_CODE_:size3:750176:
  screenSize = 3;
} //_CODE_:size3:750176:

public void size2Clicked(GOption source, GEvent event) { //_CODE_:size2:757699:
  screenSize = 2;
} //_CODE_:size2:757699:

public void size1Clicked(GOption source, GEvent event) { //_CODE_:size1:960254:
  screenSize = 1;
} //_CODE_:size1:960254:

public void cameraSliderSlid(GSlider source, GEvent event) { //_CODE_:cameraSlider:348224:
  cameras = source.getValueI();
} //_CODE_:cameraSlider:348224:

public void anyPerformanceChosen(GOption source, GEvent event) { //_CODE_:anyPerformance:333481:
  String[] performanceArray = {"powerful","midrange","budget"};
  performance = performanceArray[round(random(0, 2))];
} //_CODE_:anyPerformance:333481:

public void budgetChosen(GOption source, GEvent event) { //_CODE_:budget:421045:
  performance = "budget";
} //_CODE_:budget:421045:

public void midrangeChosen(GOption source, GEvent event) { //_CODE_:midrange:302861:
  performance = "midrange";
} //_CODE_:midrange:302861:

public void powerfulChosen(GOption source, GEvent event) { //_CODE_:powerful:737175:
  performance = "powerful";
} //_CODE_:powerful:737175:

public void anySizeChosen(GOption source, GEvent event) { //_CODE_:anySize:538168:
  batterySize = round(random(1, 3));
} //_CODE_:anySize:538168:

public void basicChosen(GOption source, GEvent event) { //_CODE_:basic:942858:
  batterySize = 3;
} //_CODE_:basic:942858:

public void regularChosen(GOption source, GEvent event) { //_CODE_:regular:330230:
  batterySize = 2;
} //_CODE_:regular:330230:

public void hugeChosen(GOption source, GEvent event) { //_CODE_:huge:234490:
  batterySize = 1;
} //_CODE_:huge:234490:

public void wantDualSimTicked(GCheckbox source, GEvent event) { //_CODE_:wantDualSim:526849:
  if (source.isSelected()) {
    dualSim = "yes";
  } else {
    dualSim = "no";
  }
} //_CODE_:wantDualSim:526849:

public void wantFluidTicked(GCheckbox source, GEvent event) { //_CODE_:wantFluid:571497:
  if (source.isSelected()) {
    fluidDisplay = "yes";
  } else {
    fluidDisplay = "no";
  }
} //_CODE_:wantFluid:571497:

public void HDChosen(GOption source, GEvent event) { //_CODE_:HD:313164:
  screenResolution = 3;
} //_CODE_:HD:313164:

public void FHDChosen(GOption source, GEvent event) { //_CODE_:FHD:412437:
  screenResolution = 2;
} //_CODE_:FHD:412437:

public void QHDChosen(GOption source, GEvent event) { //_CODE_:QHD:848697:
  screenResolution = 1;
} //_CODE_:QHD:848697:

public void GB256Chosen(GOption source, GEvent event) { //_CODE_:GB256:373052:
  minimumStorage = 256;
} //_CODE_:GB256:373052:

public void GB128Chosen(GOption source, GEvent event) { //_CODE_:GB128:657978:
  minimumStorage = 128;
} //_CODE_:GB128:657978:

public void GB32Chosen(GOption source, GEvent event) { //_CODE_:GB32:316193:
  minimumStorage = 32;
} //_CODE_:GB32:316193:

public void GB64Chosen(GOption source, GEvent event) { //_CODE_:GB64:285405:
  minimumStorage = 64;
} //_CODE_:GB64:285405:

public void waterResistanceTicked(GCheckbox source, GEvent event) { //_CODE_:tickForWaterResistance:903503:
  if (source.isSelected()) {
    waterResistance = "yes";
  } else {
    waterResistance = "no";
  }
} //_CODE_:tickForWaterResistance:903503:

public void resetButtonClick(GButton source, GEvent event) { //_CODE_:resetButton:829414:
  resetChoices();
  resetPrefs();
  resultLabel.setText("Your Phone choice is...");
} //_CODE_:resetButton:829414:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setMouseOverEnabled(false);
  surface.setTitle("Find a Phone");
  OSLabel = new GLabel(this, 10, 10, 80, 20);
  OSLabel.setText("Mobile OS");
  OSLabel.setTextBold();
  OSLabel.setOpaque(true);
  jackLabel = new GLabel(this, 10, 100, 120, 20);
  jackLabel.setText("Headphone Jack?");
  jackLabel.setTextBold();
  jackLabel.setOpaque(true);
  OS = new GToggleGroup();
  iOS = new GOption(this, 10, 30, 80, 20);
  iOS.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  iOS.setText("iOS");
  iOS.setTextBold();
  iOS.setOpaque(true);
  iOS.addEventHandler(this, "iOSSelected");
  eitherOS = new GOption(this, 10, 70, 80, 20);
  eitherOS.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  eitherOS.setText("Either");
  eitherOS.setTextBold();
  eitherOS.setOpaque(true);
  eitherOS.addEventHandler(this, "eitherOSSelected");
  Android = new GOption(this, 10, 50, 80, 20);
  Android.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  Android.setText("Android");
  Android.setTextBold();
  Android.setOpaque(true);
  Android.addEventHandler(this, "AndroidSelected");
  OS.addControl(iOS);
  iOS.setSelected(true);
  OS.addControl(eitherOS);
  OS.addControl(Android);
  wantJack = new GCheckbox(this, 10, 120, 120, 20);
  wantJack.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  wantJack.setText("Tick for Yes");
  wantJack.setTextBold();
  wantJack.setOpaque(true);
  wantJack.addEventHandler(this, "wantJackTicked");
  displayDesignLabel = new GLabel(this, 10, 150, 110, 20);
  displayDesignLabel.setText("Display Design");
  displayDesignLabel.setTextBold();
  displayDesignLabel.setOpaque(true);
  designType = new GToggleGroup();
  anyChoice = new GOption(this, 10, 250, 110, 20);
  anyChoice.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  anyChoice.setText("Any");
  anyChoice.setTextBold();
  anyChoice.setOpaque(true);
  anyChoice.addEventHandler(this, "anyChoiceClicked");
  notchChoice = new GOption(this, 10, 230, 110, 20);
  notchChoice.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  notchChoice.setText("Notch");
  notchChoice.setTextBold();
  notchChoice.setOpaque(true);
  notchChoice.addEventHandler(this, "notchChoiceClicked");
  holePunchChoice = new GOption(this, 10, 210, 110, 20);
  holePunchChoice.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  holePunchChoice.setText("Hole Punch");
  holePunchChoice.setTextBold();
  holePunchChoice.setOpaque(true);
  holePunchChoice.addEventHandler(this, "holePunchChoiceClicked");
  bezelFreeChoice = new GOption(this, 10, 190, 110, 20);
  bezelFreeChoice.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  bezelFreeChoice.setText("Bezel-Free");
  bezelFreeChoice.setTextBold();
  bezelFreeChoice.setOpaque(true);
  bezelFreeChoice.addEventHandler(this, "bezelFreeChoiceClicked");
  bezelChoice = new GOption(this, 10, 170, 110, 20);
  bezelChoice.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  bezelChoice.setText("Bezel");
  bezelChoice.setTextBold();
  bezelChoice.setOpaque(true);
  bezelChoice.addEventHandler(this, "bezelChoiceClicked");
  designType.addControl(anyChoice);
  designType.addControl(notchChoice);
  designType.addControl(holePunchChoice);
  designType.addControl(bezelFreeChoice);
  designType.addControl(bezelChoice);
  bezelChoice.setSelected(true);
  screenPanelLabel = new GLabel(this, 10, 280, 110, 20);
  screenPanelLabel.setText("Screen Panel");
  screenPanelLabel.setTextBold();
  screenPanelLabel.setOpaque(true);
  screenPanelGroup = new GToggleGroup();
  eitherChoice = new GOption(this, 10, 340, 110, 20);
  eitherChoice.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  eitherChoice.setText("Either");
  eitherChoice.setTextBold();
  eitherChoice.setOpaque(true);
  eitherChoice.addEventHandler(this, "eitherChoiceClicked");
  OLEDChoice = new GOption(this, 10, 320, 110, 20);
  OLEDChoice.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  OLEDChoice.setText("OLED");
  OLEDChoice.setTextBold();
  OLEDChoice.setOpaque(true);
  OLEDChoice.addEventHandler(this, "OLEDChoiceClicked");
  LCDChoice = new GOption(this, 10, 300, 110, 20);
  LCDChoice.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  LCDChoice.setText("LCD");
  LCDChoice.setTextBold();
  LCDChoice.setOpaque(true);
  LCDChoice.addEventHandler(this, "LCDChoiceClicked");
  screenPanelGroup.addControl(eitherChoice);
  screenPanelGroup.addControl(OLEDChoice);
  screenPanelGroup.addControl(LCDChoice);
  LCDChoice.setSelected(true);
  screenSizeLabel = new GLabel(this, 10, 370, 150, 20);
  screenSizeLabel.setText("Screen Size (inches)");
  screenSizeLabel.setTextBold();
  screenSizeLabel.setOpaque(true);
  screenSizeGroup = new GToggleGroup();
  size5 = new GOption(this, 10, 470, 150, 20);
  size5.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  size5.setText("Foldable Phone");
  size5.setTextBold();
  size5.setOpaque(true);
  size5.addEventHandler(this, "size5Clicked");
  size4 = new GOption(this, 10, 450, 150, 20);
  size4.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  size4.setText("6.4+");
  size4.setTextBold();
  size4.setOpaque(true);
  size4.addEventHandler(this, "size4Clicked");
  size3 = new GOption(this, 10, 430, 150, 20);
  size3.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  size3.setText("6.1-6.3");
  size3.setTextBold();
  size3.setOpaque(true);
  size3.addEventHandler(this, "size3Clicked");
  size2 = new GOption(this, 10, 410, 150, 20);
  size2.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  size2.setText("5.5-6");
  size2.setTextBold();
  size2.setOpaque(true);
  size2.addEventHandler(this, "size2Clicked");
  size1 = new GOption(this, 10, 390, 150, 20);
  size1.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  size1.setText("4.7-5.4");
  size1.setTextBold();
  size1.setOpaque(true);
  size1.addEventHandler(this, "size1Clicked");
  screenSizeGroup.addControl(size5);
  screenSizeGroup.addControl(size4);
  screenSizeGroup.addControl(size3);
  screenSizeGroup.addControl(size2);
  screenSizeGroup.addControl(size1);
  size1.setSelected(true);
  cameraLabel = new GLabel(this, 10, 500, 70, 20);
  cameraLabel.setText("Cameras");
  cameraLabel.setTextBold();
  cameraLabel.setOpaque(true);
  cameraSlider = new GSlider(this, 10, 520, 70, 50, 10.0);
  cameraSlider.setShowValue(true);
  cameraSlider.setShowLimits(true);
  cameraSlider.setLimits(1, 1, 5);
  cameraSlider.setNbrTicks(5);
  cameraSlider.setStickToTicks(true);
  cameraSlider.setNumberFormat(G4P.INTEGER, 0);
  cameraSlider.setOpaque(true);
  cameraSlider.addEventHandler(this, "cameraSliderSlid");
  performanceLabel = new GLabel(this, 10, 580, 120, 20);
  performanceLabel.setText("Performance");
  performanceLabel.setTextBold();
  performanceLabel.setOpaque(true);
  performanceGroup = new GToggleGroup();
  anyPerformance = new GOption(this, 10, 660, 120, 20);
  anyPerformance.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  anyPerformance.setText("Any");
  anyPerformance.setTextBold();
  anyPerformance.setOpaque(true);
  anyPerformance.addEventHandler(this, "anyPerformanceChosen");
  budget = new GOption(this, 10, 640, 120, 20);
  budget.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  budget.setText("Budget");
  budget.setTextBold();
  budget.setOpaque(true);
  budget.addEventHandler(this, "budgetChosen");
  midrange = new GOption(this, 10, 620, 120, 20);
  midrange.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  midrange.setText("Midrange");
  midrange.setTextBold();
  midrange.setOpaque(true);
  midrange.addEventHandler(this, "midrangeChosen");
  powerful = new GOption(this, 10, 600, 120, 20);
  powerful.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  powerful.setText("Powerful");
  powerful.setTextBold();
  powerful.setOpaque(true);
  powerful.addEventHandler(this, "powerfulChosen");
  performanceGroup.addControl(anyPerformance);
  performanceGroup.addControl(budget);
  performanceGroup.addControl(midrange);
  performanceGroup.addControl(powerful);
  powerful.setSelected(true);
  batterySizeLabel = new GLabel(this, 200, 10, 170, 20);
  batterySizeLabel.setText("Battery Capacity (mAh)");
  batterySizeLabel.setTextBold();
  batterySizeLabel.setOpaque(true);
  batteryGroup = new GToggleGroup();
  anySize = new GOption(this, 200, 90, 170, 20);
  anySize.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  anySize.setText("Any");
  anySize.setTextBold();
  anySize.setOpaque(true);
  anySize.addEventHandler(this, "anySizeChosen");
  basic = new GOption(this, 200, 70, 170, 20);
  basic.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  basic.setText("Basic (< 3000)");
  basic.setTextBold();
  basic.setOpaque(true);
  basic.addEventHandler(this, "basicChosen");
  regular = new GOption(this, 200, 50, 170, 20);
  regular.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  regular.setText("Regular (3000-5000)");
  regular.setTextBold();
  regular.setOpaque(true);
  regular.addEventHandler(this, "regularChosen");
  huge = new GOption(this, 200, 30, 170, 20);
  huge.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  huge.setText("HUGE (> 5000)");
  huge.setTextBold();
  huge.setOpaque(true);
  huge.addEventHandler(this, "hugeChosen");
  batteryGroup.addControl(anySize);
  batteryGroup.addControl(basic);
  batteryGroup.addControl(regular);
  batteryGroup.addControl(huge);
  huge.setSelected(true);
  dualSimLabel = new GLabel(this, 200, 120, 110, 20);
  dualSimLabel.setText("Dual Sim?");
  dualSimLabel.setTextBold();
  dualSimLabel.setOpaque(true);
  wantDualSim = new GCheckbox(this, 200, 140, 110, 20);
  wantDualSim.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  wantDualSim.setText("Tick for Yes");
  wantDualSim.setTextBold();
  wantDualSim.setOpaque(true);
  wantDualSim.addEventHandler(this, "wantDualSimTicked");
  label1 = new GLabel(this, 200, 170, 160, 20);
  label1.setText("Fluid Display? (90Hz+)");
  label1.setTextBold();
  label1.setOpaque(true);
  wantFluid = new GCheckbox(this, 200, 190, 160, 20);
  wantFluid.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  wantFluid.setText("Tick for Yes");
  wantFluid.setTextBold();
  wantFluid.setOpaque(true);
  wantFluid.addEventHandler(this, "wantFluidTicked");
  label2 = new GLabel(this, 200, 220, 130, 20);
  label2.setText("Screen Resolution");
  label2.setTextBold();
  label2.setOpaque(true);
  resolutionGroup = new GToggleGroup();
  HD = new GOption(this, 200, 280, 120, 20);
  HD.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  HD.setText("720p+");
  HD.setTextBold();
  HD.setOpaque(true);
  HD.addEventHandler(this, "HDChosen");
  FHD = new GOption(this, 200, 260, 120, 20);
  FHD.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  FHD.setText("1080p+");
  FHD.setTextBold();
  FHD.setOpaque(true);
  FHD.addEventHandler(this, "FHDChosen");
  QHD = new GOption(this, 200, 240, 120, 20);
  QHD.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  QHD.setText("1440p+");
  QHD.setTextBold();
  QHD.setOpaque(true);
  QHD.addEventHandler(this, "QHDChosen");
  resolutionGroup.addControl(HD);
  resolutionGroup.addControl(FHD);
  resolutionGroup.addControl(QHD);
  QHD.setSelected(true);
  storageLabel = new GLabel(this, 200, 310, 160, 20);
  storageLabel.setText("Storage Capacity (GB)");
  storageLabel.setTextBold();
  storageLabel.setOpaque(true);
  storageGroup = new GToggleGroup();
  GB256 = new GOption(this, 200, 330, 160, 20);
  GB256.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  GB256.setText("256");
  GB256.setTextBold();
  GB256.setOpaque(true);
  GB256.addEventHandler(this, "GB256Chosen");
  GB128 = new GOption(this, 200, 350, 160, 20);
  GB128.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  GB128.setText("128");
  GB128.setTextBold();
  GB128.setOpaque(true);
  GB128.addEventHandler(this, "GB128Chosen");
  GB32 = new GOption(this, 200, 390, 160, 20);
  GB32.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  GB32.setText("32");
  GB32.setTextBold();
  GB32.setOpaque(true);
  GB32.addEventHandler(this, "GB32Chosen");
  GB64 = new GOption(this, 200, 370, 160, 20);
  GB64.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  GB64.setText("64");
  GB64.setTextBold();
  GB64.setOpaque(true);
  GB64.addEventHandler(this, "GB64Chosen");
  storageGroup.addControl(GB256);
  GB256.setSelected(true);
  storageGroup.addControl(GB128);
  storageGroup.addControl(GB32);
  storageGroup.addControl(GB64);
  waterResistanceLabel = new GLabel(this, 200, 420, 130, 20);
  waterResistanceLabel.setText("Water Resistance");
  waterResistanceLabel.setTextBold();
  waterResistanceLabel.setOpaque(true);
  tickForWaterResistance = new GCheckbox(this, 200, 440, 130, 20);
  tickForWaterResistance.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  tickForWaterResistance.setText("Tick for Yes");
  tickForWaterResistance.setTextBold();
  tickForWaterResistance.setOpaque(true);
  tickForWaterResistance.addEventHandler(this, "waterResistanceTicked");
  resultLabel = new GLabel(this, 10, 710, 290, 30);
  resultLabel.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  resultLabel.setText("Your Phone choice is...");
  resultLabel.setOpaque(true);
  resetButton = new GButton(this, 310, 710, 80, 30);
  resetButton.setText("Reset");
  resetButton.setTextBold();
  resetButton.setLocalColorScheme(GCScheme.RED_SCHEME);
  resetButton.addEventHandler(this, "resetButtonClick");
}

// Variable declarations 
// autogenerated do not edit
GLabel OSLabel; 
GLabel jackLabel; 
GToggleGroup OS; 
GOption iOS; 
GOption eitherOS; 
GOption Android; 
GCheckbox wantJack; 
GLabel displayDesignLabel; 
GToggleGroup designType; 
GOption anyChoice; 
GOption notchChoice; 
GOption holePunchChoice; 
GOption bezelFreeChoice; 
GOption bezelChoice; 
GLabel screenPanelLabel; 
GToggleGroup screenPanelGroup; 
GOption eitherChoice; 
GOption OLEDChoice; 
GOption LCDChoice; 
GLabel screenSizeLabel; 
GToggleGroup screenSizeGroup; 
GOption size5; 
GOption size4; 
GOption size3; 
GOption size2; 
GOption size1; 
GLabel cameraLabel; 
GSlider cameraSlider; 
GLabel performanceLabel; 
GToggleGroup performanceGroup; 
GOption anyPerformance; 
GOption budget; 
GOption midrange; 
GOption powerful; 
GLabel batterySizeLabel; 
GToggleGroup batteryGroup; 
GOption anySize; 
GOption basic; 
GOption regular; 
GOption huge; 
GLabel dualSimLabel; 
GCheckbox wantDualSim; 
GLabel label1; 
GCheckbox wantFluid; 
GLabel label2; 
GToggleGroup resolutionGroup; 
GOption HD; 
GOption FHD; 
GOption QHD; 
GLabel storageLabel; 
GToggleGroup storageGroup; 
GOption GB256; 
GOption GB128; 
GOption GB32; 
GOption GB64; 
GLabel waterResistanceLabel; 
GCheckbox tickForWaterResistance; 
GLabel resultLabel; 
GButton resetButton; 
