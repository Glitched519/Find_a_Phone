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

public void iOSSelected(GOption source, GEvent event) { //_CODE_:iOS:829767:
  osChosen = "iOS";
} //_CODE_:iOS:829767:

public void AndroidSelected(GOption source, GEvent event) { //_CODE_:Android:543280:
  osChosen = "Android";
} //_CODE_:Android:543280:

public void budgetChosen(GOption source, GEvent event) { //_CODE_:budget:666443:
  performance = "budget";
} //_CODE_:budget:666443:

public void midrangeChosen(GOption source, GEvent event) { //_CODE_:midrange:799661:
  performance = "midrange";
} //_CODE_:midrange:799661:

public void powerfulChosen(GOption source, GEvent event) { //_CODE_:powerful:528973:
  performance = "powerful";
} //_CODE_:powerful:528973:

public void notchChosen(GOption source, GEvent event) { //_CODE_:notch:845926:
  displayDesign = "notch";
} //_CODE_:notch:845926:

public void holeChosen(GOption source, GEvent event) { //_CODE_:hole:895545:
  displayDesign = "hole";
} //_CODE_:hole:895545:

public void bezelFreeChosen(GOption source, GEvent event) { //_CODE_:bezelFree:601591:
  displayDesign = "bezel-free";
} //_CODE_:bezelFree:601591:

public void bezelChosen(GOption source, GEvent event) { //_CODE_:bezel:203931:
  displayDesign = "bezel";
} //_CODE_:bezel:203931:

public void smallChosen(GOption source, GEvent event) { //_CODE_:small:678288:
  batterySize = 4;
} //_CODE_:small:678288:

public void regularChosen(GOption source, GEvent event) { //_CODE_:regular:677055:
  batterySize = 3;
} //_CODE_:regular:677055:

public void largeChosen(GOption source, GEvent event) { //_CODE_:large:523101:
  batterySize = 2;
} //_CODE_:large:523101:

public void HUGEChosen(GOption source, GEvent event) { //_CODE_:HUGE:825312:
  batterySize = 1;
} //_CODE_:HUGE:825312:

public void size4Chosen(GOption source, GEvent event) { //_CODE_:size4:810547:
  screenSize = 4;
} //_CODE_:size4:810547:

public void size3Chosen(GOption source, GEvent event) { //_CODE_:size3:647667:
  screenSize = 3;
} //_CODE_:size3:647667:

public void size2Chosen(GOption source, GEvent event) { //_CODE_:size2:722054:
  screenSize = 2;
} //_CODE_:size2:722054:

public void size1Chosen(GOption source, GEvent event) { //_CODE_:size1:380928:
  screenSize = 1;
} //_CODE_:size1:380928:

public void size5Chosen(GOption source, GEvent event) { //_CODE_:size5:674391:
  screenSize = 5;
} //_CODE_:size5:674391:

public void OLEDChosen(GOption source, GEvent event) { //_CODE_:OLED:537645:
  screenPanel = "OLED";
} //_CODE_:OLED:537645:

public void LCDChosen(GOption source, GEvent event) { //_CODE_:LCD:979593:
  screenPanel = "LCD";
} //_CODE_:LCD:979593:

public void p720Chosen(GOption source, GEvent event) { //_CODE_:p720:708434:
  screenResolution = 3;
} //_CODE_:p720:708434:

public void p1080Chosen(GOption source, GEvent event) { //_CODE_:p1080:671958:
  screenResolution = 2;
} //_CODE_:p1080:671958:

public void p1440Chosen(GOption source, GEvent event) { //_CODE_:p1440:988653:
  screenResolution = 1;
} //_CODE_:p1440:988653:

public void GB32Chosen(GOption source, GEvent event) { //_CODE_:GB32:239781:
  minimumStorage = 32;
} //_CODE_:GB32:239781:

public void GB64Chosen(GOption source, GEvent event) { //_CODE_:GB64:391700:
  minimumStorage = 64;
} //_CODE_:GB64:391700:

public void GB128Chosen(GOption source, GEvent event) { //_CODE_:GB128:680171:
  minimumStorage = 128;
} //_CODE_:GB128:680171:

public void GB256Chosen(GOption source, GEvent event) { //_CODE_:GB256:537034:
  minimumStorage = 256;
} //_CODE_:GB256:537034:

public void wantWaterResistanceTicked(GCheckbox source, GEvent event) { //_CODE_:wantWaterResistance:397570:
  if (source.isSelected()) {
    waterResistance = "yes";
  } else {
    waterResistance = "no";
  }
} //_CODE_:wantWaterResistance:397570:

public void wantFluidTicked(GCheckbox source, GEvent event) { //_CODE_:wantFluid:334248:
  if (source.isSelected()) {
    fluidDisplay = "yes";
  } else {
    fluidDisplay = "no";
  }
} //_CODE_:wantFluid:334248:

public void wantExpandableMemoryTicked(GCheckbox source, GEvent event) { //_CODE_:wantExpandableMemory:477253:
  if (source.isSelected()) {
    expandableMemory = "yes";
  } else {
    expandableMemory = "no";
  }
} //_CODE_:wantExpandableMemory:477253:

public void wantJackTicked(GCheckbox source, GEvent event) { //_CODE_:wantJack:397423:
  if (source.isSelected()) {
    headphoneJack = "yes";
  } else {
    headphoneJack = "no";
  }
} //_CODE_:wantJack:397423:

public void cameraSliderSlid(GSlider source, GEvent event) { //_CODE_:cameraSlider:260661:
  cameras = source.getValueI();
} //_CODE_:cameraSlider:260661:

public void resetButtonClicked(GButton source, GEvent event) { //_CODE_:resetButton:763317:
  frameRate(60);
  reset();
} //_CODE_:resetButton:763317:

public void amazonButtonClicked(GButton source, GEvent event) { //_CODE_:amazonButton:719653:
  link(amazonURL);
}

public void eBayButtonClicked(GButton source, GEvent event) { //_CODE_:eBayButton:566782:
  link(eBayURL);
}

public void walmartButtonClicked(GButton source, GEvent event) { //_CODE_:walmartButton:703691:
  link(walmartURL);
} //_CODE_:walmartButton:703691:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setMouseOverEnabled(false);
  surface.setTitle("Find a Phone");
  OSLabel = new GLabel(this, 10, 10, 160, 20);
  OSLabel.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  OSLabel.setText("Mobile OS");
  OSLabel.setLocalColorScheme(GCScheme.ORANGE_SCHEME);
  OSLabel.setOpaque(true);
  OS = new GToggleGroup();
  iOS = new GOption(this, 10, 30, 160, 20);
  iOS.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  iOS.setText("iOS");
  iOS.setLocalColorScheme(GCScheme.ORANGE_SCHEME);
  iOS.setOpaque(true);
  iOS.addEventHandler(this, "iOSSelected");
  Android = new GOption(this, 10, 50, 160, 20);
  Android.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  Android.setText("Android");
  Android.setLocalColorScheme(GCScheme.ORANGE_SCHEME);
  Android.setOpaque(true);
  Android.addEventHandler(this, "AndroidSelected");
  OS.addControl(iOS);
  iOS.setSelected(true);
  OS.addControl(Android);
  performanceLabel = new GLabel(this, 10, 80, 160, 20);
  performanceLabel.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  performanceLabel.setText("Performance");
  performanceLabel.setLocalColorScheme(GCScheme.YELLOW_SCHEME);
  performanceLabel.setOpaque(true);
  performanceGroup = new GToggleGroup();
  budget = new GOption(this, 10, 140, 160, 20);
  budget.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  budget.setText("Budget");
  budget.setLocalColorScheme(GCScheme.YELLOW_SCHEME);
  budget.setOpaque(true);
  budget.addEventHandler(this, "budgetChosen");
  midrange = new GOption(this, 10, 120, 160, 20);
  midrange.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  midrange.setText("Midrange");
  midrange.setLocalColorScheme(GCScheme.YELLOW_SCHEME);
  midrange.setOpaque(true);
  midrange.addEventHandler(this, "midrangeChosen");
  powerful = new GOption(this, 10, 100, 160, 20);
  powerful.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  powerful.setText("Powerful");
  powerful.setLocalColorScheme(GCScheme.YELLOW_SCHEME);
  powerful.setOpaque(true);
  powerful.addEventHandler(this, "powerfulChosen");
  performanceGroup.addControl(budget);
  performanceGroup.addControl(midrange);
  performanceGroup.addControl(powerful);
  powerful.setSelected(true);
  displayDesignLabel = new GLabel(this, 10, 170, 160, 20);
  displayDesignLabel.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  displayDesignLabel.setText("Display Design");
  displayDesignLabel.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  displayDesignLabel.setOpaque(true);
  displayDesignGroup = new GToggleGroup();
  notch = new GOption(this, 10, 250, 160, 20);
  notch.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  notch.setText("Notch");
  notch.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  notch.setOpaque(true);
  notch.addEventHandler(this, "notchChosen");
  hole = new GOption(this, 10, 230, 160, 20);
  hole.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  hole.setText("Hole");
  hole.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  hole.setOpaque(true);
  hole.addEventHandler(this, "holeChosen");
  bezelFree = new GOption(this, 10, 210, 160, 20);
  bezelFree.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  bezelFree.setText("Bezel-free");
  bezelFree.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  bezelFree.setOpaque(true);
  bezelFree.addEventHandler(this, "bezelFreeChosen");
  bezel = new GOption(this, 10, 190, 160, 20);
  bezel.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  bezel.setText("Bezel");
  bezel.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  bezel.setOpaque(true);
  bezel.addEventHandler(this, "bezelChosen");
  displayDesignGroup.addControl(notch);
  displayDesignGroup.addControl(hole);
  displayDesignGroup.addControl(bezelFree);
  displayDesignGroup.addControl(bezel);
  bezel.setSelected(true);
  batterySizeLabel = new GLabel(this, 10, 280, 160, 20);
  batterySizeLabel.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  batterySizeLabel.setText("Battery Size (mAh)");
  batterySizeLabel.setOpaque(true);
  batterySizeGroup = new GToggleGroup();
  small = new GOption(this, 10, 360, 160, 20);
  small.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  small.setText("Small (≤ 3000)");
  small.setOpaque(true);
  small.addEventHandler(this, "smallChosen");
  regular = new GOption(this, 10, 340, 160, 20);
  regular.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  regular.setText("Regular (3001 - 3999)");
  regular.setOpaque(true);
  regular.addEventHandler(this, "regularChosen");
  large = new GOption(this, 10, 320, 160, 20);
  large.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  large.setText("Large (4000 - 4999)");
  large.setOpaque(true);
  large.addEventHandler(this, "largeChosen");
  HUGE = new GOption(this, 10, 300, 160, 20);
  HUGE.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  HUGE.setText("HUGE (≥ 5000)");
  HUGE.setOpaque(true);
  HUGE.addEventHandler(this, "HUGEChosen");
  batterySizeGroup.addControl(small);
  batterySizeGroup.addControl(regular);
  batterySizeGroup.addControl(large);
  batterySizeGroup.addControl(HUGE);
  HUGE.setSelected(true);
  screenSizeLabel = new GLabel(this, 10, 390, 160, 20);
  screenSizeLabel.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  screenSizeLabel.setText("Screen Size (inches)");
  screenSizeLabel.setLocalColorScheme(GCScheme.PURPLE_SCHEME);
  screenSizeLabel.setOpaque(true);
  screenSizeGroup = new GToggleGroup();
  size4 = new GOption(this, 10, 470, 160, 20);
  size4.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  size4.setText("6.4+");
  size4.setLocalColorScheme(GCScheme.PURPLE_SCHEME);
  size4.setOpaque(true);
  size4.addEventHandler(this, "size4Chosen");
  size3 = new GOption(this, 10, 450, 160, 20);
  size3.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  size3.setText("6.1 - 6.3");
  size3.setLocalColorScheme(GCScheme.PURPLE_SCHEME);
  size3.setOpaque(true);
  size3.addEventHandler(this, "size3Chosen");
  size2 = new GOption(this, 10, 430, 160, 20);
  size2.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  size2.setText("5.5 - 6");
  size2.setLocalColorScheme(GCScheme.PURPLE_SCHEME);
  size2.setOpaque(true);
  size2.addEventHandler(this, "size2Chosen");
  size1 = new GOption(this, 10, 410, 160, 20);
  size1.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  size1.setText("4.7 - 5.4");
  size1.setLocalColorScheme(GCScheme.PURPLE_SCHEME);
  size1.setOpaque(true);
  size1.addEventHandler(this, "size1Chosen");
  size5 = new GOption(this, 10, 490, 160, 20);
  size5.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  size5.setText("Foldable Phone");
  size5.setLocalColorScheme(GCScheme.PURPLE_SCHEME);
  size5.setOpaque(true);
  size5.addEventHandler(this, "size5Chosen");
  screenSizeGroup.addControl(size4);
  screenSizeGroup.addControl(size3);
  screenSizeGroup.addControl(size2);
  screenSizeGroup.addControl(size1);
  size1.setSelected(true);
  screenSizeGroup.addControl(size5);
  screenPanelLabel = new GLabel(this, 180, 10, 160, 20);
  screenPanelLabel.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  screenPanelLabel.setText("Screen Panel");
  screenPanelLabel.setLocalColorScheme(GCScheme.ORANGE_SCHEME);
  screenPanelLabel.setOpaque(true);
  screenPanelGroup = new GToggleGroup();
  OLED = new GOption(this, 180, 50, 160, 20);
  OLED.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  OLED.setText("OLED");
  OLED.setLocalColorScheme(GCScheme.ORANGE_SCHEME);
  OLED.setOpaque(true);
  OLED.addEventHandler(this, "OLEDChosen");
  LCD = new GOption(this, 180, 30, 160, 20);
  LCD.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  LCD.setText("LCD");
  LCD.setLocalColorScheme(GCScheme.ORANGE_SCHEME);
  LCD.setOpaque(true);
  LCD.addEventHandler(this, "LCDChosen");
  screenPanelGroup.addControl(OLED);
  screenPanelGroup.addControl(LCD);
  LCD.setSelected(true);
  screenResolutionLabel = new GLabel(this, 180, 80, 160, 20);
  screenResolutionLabel.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  screenResolutionLabel.setText("Screen Resolution");
  screenResolutionLabel.setLocalColorScheme(GCScheme.YELLOW_SCHEME);
  screenResolutionLabel.setOpaque(true);
  screenResolutionGroup = new GToggleGroup();
  p720 = new GOption(this, 180, 140, 160, 20);
  p720.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  p720.setText("720p+");
  p720.setLocalColorScheme(GCScheme.YELLOW_SCHEME);
  p720.setOpaque(true);
  p720.addEventHandler(this, "p720Chosen");
  p1080 = new GOption(this, 180, 120, 160, 20);
  p1080.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  p1080.setText("1080p+");
  p1080.setLocalColorScheme(GCScheme.YELLOW_SCHEME);
  p1080.setOpaque(true);
  p1080.addEventHandler(this, "p1080Chosen");
  p1440 = new GOption(this, 180, 100, 160, 20);
  p1440.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  p1440.setText("1440p+");
  p1440.setLocalColorScheme(GCScheme.YELLOW_SCHEME);
  p1440.setOpaque(true);
  p1440.addEventHandler(this, "p1440Chosen");
  screenResolutionGroup.addControl(p720);
  screenResolutionGroup.addControl(p1080);
  screenResolutionGroup.addControl(p1440);
  p1440.setSelected(true);
  minimumStorageLabel = new GLabel(this, 180, 170, 160, 20);
  minimumStorageLabel.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  minimumStorageLabel.setText("Minimum Storage (GB)");
  minimumStorageLabel.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  minimumStorageLabel.setOpaque(true);
  minimumStorageGroup = new GToggleGroup();
  GB32 = new GOption(this, 180, 250, 160, 20);
  GB32.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  GB32.setText("32");
  GB32.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  GB32.setOpaque(true);
  GB32.addEventHandler(this, "GB32Chosen");
  GB64 = new GOption(this, 180, 230, 160, 20);
  GB64.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  GB64.setText("64");
  GB64.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  GB64.setOpaque(true);
  GB64.addEventHandler(this, "GB64Chosen");
  GB128 = new GOption(this, 180, 210, 160, 20);
  GB128.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  GB128.setText("128");
  GB128.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  GB128.setOpaque(true);
  GB128.addEventHandler(this, "GB128Chosen");
  GB256 = new GOption(this, 180, 190, 160, 20);
  GB256.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  GB256.setText("256");
  GB256.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  GB256.setOpaque(true);
  GB256.addEventHandler(this, "GB256Chosen");
  minimumStorageGroup.addControl(GB32);
  minimumStorageGroup.addControl(GB64);
  minimumStorageGroup.addControl(GB128);
  minimumStorageGroup.addControl(GB256);
  GB256.setSelected(true);
  specialFeaturesLabel = new GLabel(this, 180, 280, 160, 20);
  specialFeaturesLabel.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  specialFeaturesLabel.setText("Special Features?");
  specialFeaturesLabel.setOpaque(true);
  specialFeaturesGroup = new GToggleGroup();
  wantWaterResistance = new GCheckbox(this, 180, 360, 160, 20);
  wantWaterResistance.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  wantWaterResistance.setText("Water Resistance");
  wantWaterResistance.setOpaque(true);
  wantWaterResistance.addEventHandler(this, "wantWaterResistanceTicked");
  wantFluid = new GCheckbox(this, 180, 340, 160, 20);
  wantFluid.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  wantFluid.setText("Fluid Display");
  wantFluid.setOpaque(true);
  wantFluid.addEventHandler(this, "wantFluidTicked");
  wantExpandableMemory = new GCheckbox(this, 180, 320, 160, 20);
  wantExpandableMemory.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  wantExpandableMemory.setText("Expandable Memory");
  wantExpandableMemory.setOpaque(true);
  wantExpandableMemory.addEventHandler(this, "wantExpandableMemoryTicked");
  wantJack = new GCheckbox(this, 180, 300, 160, 20);
  wantJack.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  wantJack.setText("Headphone Jack");
  wantJack.setOpaque(true);
  wantJack.addEventHandler(this, "wantJackTicked");
  numberOfRearCamerasLabel = new GLabel(this, 180, 390, 160, 20);
  numberOfRearCamerasLabel.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  numberOfRearCamerasLabel.setText("# of Rear Cameras");
  numberOfRearCamerasLabel.setLocalColorScheme(GCScheme.PURPLE_SCHEME);
  numberOfRearCamerasLabel.setOpaque(true);
  cameraSlider = new GSlider(this, 180, 410, 160, 100, 10.0);
  cameraSlider.setShowValue(true);
  cameraSlider.setShowLimits(true);
  cameraSlider.setLimits(1, 1, 5);
  cameraSlider.setNbrTicks(5);
  cameraSlider.setStickToTicks(true);
  cameraSlider.setShowTicks(true);
  cameraSlider.setNumberFormat(G4P.INTEGER, 0);
  cameraSlider.setLocalColorScheme(GCScheme.PURPLE_SCHEME);
  cameraSlider.setOpaque(true);
  cameraSlider.addEventHandler(this, "cameraSliderSlid");
  resetButton = new GButton(this, 230, 520, 110, 20);
  resetButton.setText("Reset");
  resetButton.setLocalColorScheme(GCScheme.RED_SCHEME);
  resetButton.addEventHandler(this, "resetButtonClicked");
  amazonButton = new GButton(this, 560, 370, 160, 50);
  amazonButton.setText("Amazon.com");
  amazonButton.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  amazonButton.addEventHandler(this, "amazonButtonClicked");
  eBayButton = new GButton(this, 560, 430, 160, 50);
  eBayButton.setText("eBay.com");
  eBayButton.setLocalColorScheme(GCScheme.YELLOW_SCHEME);
  eBayButton.addEventHandler(this, "eBayButtonClicked");
  walmartButton = new GButton(this, 560, 490, 160, 50);
  walmartButton.setText("Walmart.com");
  walmartButton.addEventHandler(this, "walmartButtonClicked");
  buyThePhoneFromLabel = new GLabel(this, 560, 340, 160, 20);
  buyThePhoneFromLabel.setText("Buy the phone from:");
  buyThePhoneFromLabel.setOpaque(true);
  sourceLabel = new GLabel(this, 560, 230, 160, 50);
  sourceLabel.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  sourceLabel.setText("All phone images are provided by and sourced from GSMArena.com.");
  sourceLabel.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  sourceLabel.setOpaque(true);
  phoneLabel = new GLabel(this, 10, 520, 210, 20);
  phoneLabel.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  phoneLabel.setText("Your phone of choice is...");
  phoneLabel.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  phoneLabel.setOpaque(true);
}

// Variable declarations 
// autogenerated do not edit
GLabel OSLabel; 
GToggleGroup OS; 
GOption iOS; 
GOption Android; 
GLabel performanceLabel; 
GToggleGroup performanceGroup; 
GOption budget; 
GOption midrange; 
GOption powerful; 
GLabel displayDesignLabel; 
GToggleGroup displayDesignGroup; 
GOption notch; 
GOption hole; 
GOption bezelFree; 
GOption bezel; 
GLabel batterySizeLabel; 
GToggleGroup batterySizeGroup; 
GOption small; 
GOption regular; 
GOption large; 
GOption HUGE; 
GLabel screenSizeLabel; 
GToggleGroup screenSizeGroup; 
GOption size4; 
GOption size3; 
GOption size2; 
GOption size1; 
GOption size5; 
GLabel screenPanelLabel; 
GToggleGroup screenPanelGroup; 
GOption OLED; 
GOption LCD; 
GLabel screenResolutionLabel; 
GToggleGroup screenResolutionGroup; 
GOption p720; 
GOption p1080; 
GOption p1440; 
GLabel minimumStorageLabel; 
GToggleGroup minimumStorageGroup; 
GOption GB32; 
GOption GB64; 
GOption GB128; 
GOption GB256; 
GLabel specialFeaturesLabel; 
GToggleGroup specialFeaturesGroup; 
GCheckbox wantWaterResistance; 
GCheckbox wantFluid; 
GCheckbox wantExpandableMemory; 
GCheckbox wantJack; 
GLabel numberOfRearCamerasLabel; 
GSlider cameraSlider; 
GButton resetButton; 
GButton amazonButton; 
GButton eBayButton; 
GButton walmartButton; 
GLabel buyThePhoneFromLabel; 
GLabel sourceLabel; 
GLabel phoneLabel; 
