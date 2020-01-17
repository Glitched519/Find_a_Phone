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

public void iOSSelected(GOption source, GEvent event) { //_CODE_:iOS:808869:
  osChosen = "iOS";
} //_CODE_:iOS:808869:

public void AndroidSelected(GOption source, GEvent event) { //_CODE_:Android:797238:
  osChosen = "Android";
} //_CODE_:Android:797238:

public void budgetChosen(GOption source, GEvent event) { //_CODE_:budget:407968:
  performance = "budget";
} //_CODE_:budget:407968:

public void midrangeChosen(GOption source, GEvent event) { //_CODE_:midrange:448949:
  performance = "midrange";
} //_CODE_:midrange:448949:

public void powerfulChosen(GOption source, GEvent event) { //_CODE_:powerful:943323:
  performance = "powerful";
} //_CODE_:powerful:943323:

public void notchChosen(GOption source, GEvent event) { //_CODE_:notch:322663:
  displayDesign = "notch";
} //_CODE_:notch:322663:

public void holeChosen(GOption source, GEvent event) { //_CODE_:hole:493186:
  displayDesign = "hole";
} //_CODE_:hole:493186:

public void bezelFreeChosen(GOption source, GEvent event) { //_CODE_:bezelFree:538634:
  displayDesign = "bezelFree";
} //_CODE_:bezelFree:538634:

public void bezelChosen(GOption source, GEvent event) { //_CODE_:bezel:651128:
  displayDesign = "bezel";
} //_CODE_:bezel:651128:

public void smallChosen(GOption source, GEvent event) { //_CODE_:small:246450:
  batterySize = 4;
} //_CODE_:small:246450:

public void regularChosen(GOption source, GEvent event) { //_CODE_:regular:578137:
  batterySize = 3;
} //_CODE_:regular:578137:

public void largeChosen(GOption source, GEvent event) { //_CODE_:large:671506:
  batterySize = 2;
} //_CODE_:large:671506:

public void HUGEChosen(GOption source, GEvent event) { //_CODE_:HUGE:406580:
  batterySize = 1;
} //_CODE_:HUGE:406580:

public void size1Chosen(GOption source, GEvent event) { //_CODE_:size1:908235:
  screenSize = 1;
} //_CODE_:size1:908235:

public void size5Chosen(GOption source, GEvent event) { //_CODE_:size5:681821:
  screenSize = 5;
} //_CODE_:size5:681821:

public void size4Chosen(GOption source, GEvent event) { //_CODE_:size4:686286:
  screenSize = 4;
} //_CODE_:size4:686286:

public void size3Chosen(GOption source, GEvent event) { //_CODE_:size3:316694:
  screenSize = 3;
} //_CODE_:size3:316694:

public void size2Chosen(GOption source, GEvent event) { //_CODE_:size2:582256:
  screenSize = 2;
} //_CODE_:size2:582256:

public void LCDChosen(GOption source, GEvent event) { //_CODE_:LCD:775096:
  screenPanel = "LCD";
} //_CODE_:LCD:775096:

public void OLEDChosen(GOption source, GEvent event) { //_CODE_:OLED:445417:
  screenPanel = "OLED";
} //_CODE_:OLED:445417:

public void p720Chosen(GOption source, GEvent event) { //_CODE_:p720:695949:
  screenResolution = 3;
} //_CODE_:p720:695949:

public void p1080Chosen(GOption source, GEvent event) { //_CODE_:p1080:760303:
  screenResolution = 2;
} //_CODE_:p1080:760303:

public void p1440Chosen(GOption source, GEvent event) { //_CODE_:p1440:460116:
  screenResolution = 1;
} //_CODE_:p1440:460116:

public void GB32Chosen(GOption source, GEvent event) { //_CODE_:GB32:596710:
  minimumStorage = 32;
} //_CODE_:GB32:596710:

public void GB64Chosen(GOption source, GEvent event) { //_CODE_:GB64:284979:
  minimumStorage = 64;
} //_CODE_:GB64:284979:

public void GB128Chosen(GOption source, GEvent event) { //_CODE_:GB128:314119:
  minimumStorage = 128;
} //_CODE_:GB128:314119:

public void GB256Chosen(GOption source, GEvent event) { //_CODE_:GB256:830569:
  minimumStorage =256;
} //_CODE_:GB256:830569:

public void wantJackTicked(GCheckbox source, GEvent event) { //_CODE_:wantJack:544229:
  if (source.isSelected()) {
    headphoneJack = "yes";
  } else {
    headphoneJack = "no";
  }
} //_CODE_:wantJack:544229:

public void wantExpandableMemoryTicked(GCheckbox source, GEvent event) { //_CODE_:wantExpandableMemory:223524:
  if (source.isSelected()) {
    expandableMemory = "yes";
  } else {
    expandableMemory = "no";
  }
} //_CODE_:wantExpandableMemory:223524:

public void wantFluidTicked(GCheckbox source, GEvent event) { //_CODE_:wantFluid:480090:
  if (source.isSelected()) {
    fluidDisplay = "yes";
  } else {
    fluidDisplay = "no";
  }
} //_CODE_:wantFluid:480090:

public void wantWaterResistanceTicked(GCheckbox source, GEvent event) { //_CODE_:wantWaterResistance:514821:
  if (source.isSelected()) {
    waterResistance = "yes";
  } else {
    waterResistance = "no";
  }
} //_CODE_:wantWaterResistance:514821:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setMouseOverEnabled(false);
  G4P.setDisplayFont("Segoe UI Semibold", G4P.PLAIN, 14);
  surface.setTitle("Find a Phone");
  OS = new GToggleGroup();
  iOS = new GOption(this, 10, 30, 160, 20);
  iOS.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  iOS.setText("iOS");
  iOS.setLocalColorScheme(GCScheme.RED_SCHEME);
  iOS.setOpaque(true);
  iOS.addEventHandler(this, "iOSSelected");
  Android = new GOption(this, 10, 50, 160, 20);
  Android.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  Android.setText("Android");
  Android.setLocalColorScheme(GCScheme.RED_SCHEME);
  Android.setOpaque(true);
  Android.addEventHandler(this, "AndroidSelected");
  OS.addControl(iOS);
  iOS.setSelected(true);
  OS.addControl(Android);
  performanceGroup = new GToggleGroup();
  budget = new GOption(this, 10, 140, 160, 20);
  budget.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  budget.setText("Budget");
  budget.setLocalColorScheme(GCScheme.ORANGE_SCHEME);
  budget.setOpaque(true);
  budget.addEventHandler(this, "budgetChosen");
  midrange = new GOption(this, 10, 120, 160, 20);
  midrange.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  midrange.setText("Midrange");
  midrange.setLocalColorScheme(GCScheme.ORANGE_SCHEME);
  midrange.setOpaque(true);
  midrange.addEventHandler(this, "midrangeChosen");
  powerful = new GOption(this, 10, 100, 160, 20);
  powerful.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  powerful.setText("Powerful");
  powerful.setLocalColorScheme(GCScheme.ORANGE_SCHEME);
  powerful.setOpaque(true);
  powerful.addEventHandler(this, "powerfulChosen");
  performanceGroup.addControl(budget);
  performanceGroup.addControl(midrange);
  performanceGroup.addControl(powerful);
  powerful.setSelected(true);
  displayDesignGroup = new GToggleGroup();
  notch = new GOption(this, 10, 250, 160, 20);
  notch.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  notch.setText("Notch");
  notch.setLocalColorScheme(GCScheme.YELLOW_SCHEME);
  notch.setOpaque(true);
  notch.addEventHandler(this, "notchChosen");
  hole = new GOption(this, 10, 230, 160, 20);
  hole.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  hole.setText("Hole");
  hole.setLocalColorScheme(GCScheme.YELLOW_SCHEME);
  hole.setOpaque(true);
  hole.addEventHandler(this, "holeChosen");
  bezelFree = new GOption(this, 10, 210, 160, 20);
  bezelFree.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  bezelFree.setText("Bezel-free");
  bezelFree.setLocalColorScheme(GCScheme.YELLOW_SCHEME);
  bezelFree.setOpaque(true);
  bezelFree.addEventHandler(this, "bezelFreeChosen");
  bezel = new GOption(this, 10, 190, 160, 20);
  bezel.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  bezel.setText("Bezel");
  bezel.setLocalColorScheme(GCScheme.YELLOW_SCHEME);
  bezel.setOpaque(true);
  bezel.addEventHandler(this, "bezelChosen");
  displayDesignGroup.addControl(notch);
  displayDesignGroup.addControl(hole);
  displayDesignGroup.addControl(bezelFree);
  displayDesignGroup.addControl(bezel);
  bezel.setSelected(true);
  batterySizeGroup = new GToggleGroup();
  small = new GOption(this, 10, 360, 160, 20);
  small.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  small.setText("Small (≤ 3000");
  small.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  small.setOpaque(true);
  small.addEventHandler(this, "smallChosen");
  regular = new GOption(this, 10, 340, 160, 20);
  regular.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  regular.setText("Regular (3001 - 3999)");
  regular.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  regular.setOpaque(true);
  regular.addEventHandler(this, "regularChosen");
  large = new GOption(this, 10, 320, 160, 20);
  large.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  large.setText("Large (4000 - 4999)");
  large.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  large.setOpaque(true);
  large.addEventHandler(this, "largeChosen");
  HUGE = new GOption(this, 10, 300, 160, 20);
  HUGE.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  HUGE.setText("HUGE (≥ 5000)");
  HUGE.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  HUGE.setOpaque(true);
  HUGE.addEventHandler(this, "HUGEChosen");
  batterySizeGroup.addControl(small);
  batterySizeGroup.addControl(regular);
  batterySizeGroup.addControl(large);
  batterySizeGroup.addControl(HUGE);
  HUGE.setSelected(true);
  screenSizeGroup = new GToggleGroup();
  size1 = new GOption(this, 10, 410, 160, 20);
  size1.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  size1.setText("4.7 - 5.4");
  size1.setOpaque(true);
  size1.addEventHandler(this, "size1Chosen");
  size5 = new GOption(this, 10, 490, 160, 20);
  size5.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  size5.setText("Foldable Phone");
  size5.setOpaque(true);
  size5.addEventHandler(this, "size5Chosen");
  size4 = new GOption(this, 10, 470, 160, 20);
  size4.setIconAlign(GAlign.LEFT, GAlign.TOP);
  size4.setText("6.4+");
  size4.setOpaque(true);
  size4.addEventHandler(this, "size4Chosen");
  size3 = new GOption(this, 10, 450, 160, 20);
  size3.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  size3.setText("6.1 - 6.3");
  size3.setOpaque(true);
  size3.addEventHandler(this, "size3Chosen");
  size2 = new GOption(this, 10, 430, 160, 20);
  size2.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  size2.setText("5.5 - 6");
  size2.setOpaque(true);
  size2.addEventHandler(this, "size2Chosen");
  screenSizeGroup.addControl(size1);
  size1.setSelected(true);
  screenSizeGroup.addControl(size5);
  screenSizeGroup.addControl(size4);
  screenSizeGroup.addControl(size3);
  screenSizeGroup.addControl(size2);
  screenPanelGroup = new GToggleGroup();
  LCD = new GOption(this, 180, 50, 160, 20);
  LCD.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  LCD.setText("LCD");
  LCD.setLocalColorScheme(GCScheme.RED_SCHEME);
  LCD.setOpaque(true);
  LCD.addEventHandler(this, "LCDChosen");
  OLED = new GOption(this, 180, 30, 160, 20);
  OLED.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  OLED.setText("OLED");
  OLED.setLocalColorScheme(GCScheme.RED_SCHEME);
  OLED.setOpaque(true);
  OLED.addEventHandler(this, "OLEDChosen");
  screenPanelGroup.addControl(LCD);
  screenPanelGroup.addControl(OLED);
  OLED.setSelected(true);
  screenResolutionGroup = new GToggleGroup();
  p720 = new GOption(this, 180, 140, 160, 20);
  p720.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  p720.setText("720p+");
  p720.setLocalColorScheme(GCScheme.ORANGE_SCHEME);
  p720.setOpaque(true);
  p720.addEventHandler(this, "p720Chosen");
  p1080 = new GOption(this, 180, 120, 160, 20);
  p1080.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  p1080.setText("1080p+");
  p1080.setLocalColorScheme(GCScheme.ORANGE_SCHEME);
  p1080.setOpaque(true);
  p1080.addEventHandler(this, "p1080Chosen");
  p1440 = new GOption(this, 180, 100, 160, 20);
  p1440.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  p1440.setText("1440p+");
  p1440.setLocalColorScheme(GCScheme.ORANGE_SCHEME);
  p1440.setOpaque(true);
  p1440.addEventHandler(this, "p1440Chosen");
  screenResolutionGroup.addControl(p720);
  screenResolutionGroup.addControl(p1080);
  screenResolutionGroup.addControl(p1440);
  p1440.setSelected(true);
  minimumStorageGroup = new GToggleGroup();
  GB32 = new GOption(this, 180, 250, 160, 20);
  GB32.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  GB32.setText("32");
  GB32.setLocalColorScheme(GCScheme.YELLOW_SCHEME);
  GB32.setOpaque(true);
  GB32.addEventHandler(this, "GB32Chosen");
  GB64 = new GOption(this, 180, 230, 160, 20);
  GB64.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  GB64.setText("64");
  GB64.setLocalColorScheme(GCScheme.YELLOW_SCHEME);
  GB64.setOpaque(true);
  GB64.addEventHandler(this, "GB64Chosen");
  GB128 = new GOption(this, 180, 210, 160, 20);
  GB128.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  GB128.setText("128");
  GB128.setLocalColorScheme(GCScheme.YELLOW_SCHEME);
  GB128.setOpaque(true);
  GB128.addEventHandler(this, "GB128Chosen");
  GB256 = new GOption(this, 180, 190, 160, 20);
  GB256.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  GB256.setText("256");
  GB256.setLocalColorScheme(GCScheme.YELLOW_SCHEME);
  GB256.setOpaque(true);
  GB256.addEventHandler(this, "GB256Chosen");
  minimumStorageGroup.addControl(GB32);
  minimumStorageGroup.addControl(GB64);
  minimumStorageGroup.addControl(GB128);
  minimumStorageGroup.addControl(GB256);
  GB256.setSelected(true);
  specialFeaturesGroup = new GToggleGroup();
  wantJack = new GCheckbox(this, 180, 360, 160, 20);
  wantJack.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  wantJack.setText("Headphone Jack");
  wantJack.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  wantJack.setOpaque(true);
  wantJack.addEventHandler(this, "wantJackTicked");
  wantExpandableMemory = new GCheckbox(this, 180, 340, 160, 20);
  wantExpandableMemory.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  wantExpandableMemory.setText("Expandable Memory");
  wantExpandableMemory.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  wantExpandableMemory.setOpaque(true);
  wantExpandableMemory.addEventHandler(this, "wantExpandableMemoryTicked");
  wantFluid = new GCheckbox(this, 180, 320, 160, 20);
  wantFluid.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  wantFluid.setText("Fluid Display");
  wantFluid.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  wantFluid.setOpaque(true);
  wantFluid.addEventHandler(this, "wantFluidTicked");
  wantWaterResistance = new GCheckbox(this, 180, 300, 160, 20);
  wantWaterResistance.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  wantWaterResistance.setText("Water Resistance");
  wantWaterResistance.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  wantWaterResistance.setOpaque(true);
  wantWaterResistance.addEventHandler(this, "wantWaterResistanceTicked");
  phoneLabel = new GLabel(this, 10, 520, 210, 25);
  phoneLabel.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  phoneLabel.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  phoneLabel.setOpaque(true);
}

// Variable declarations 
// autogenerated do not edit
GToggleGroup OS; 
GOption iOS; 
GOption Android; 
GToggleGroup performanceGroup; 
GOption budget; 
GOption midrange; 
GOption powerful; 
GToggleGroup displayDesignGroup; 
GOption notch; 
GOption hole; 
GOption bezelFree; 
GOption bezel; 
GToggleGroup batterySizeGroup; 
GOption small; 
GOption regular; 
GOption large; 
GOption HUGE; 
GToggleGroup screenSizeGroup; 
GOption size1; 
GOption size5; 
GOption size4; 
GOption size3; 
GOption size2; 
GToggleGroup screenPanelGroup; 
GOption LCD; 
GOption OLED; 
GToggleGroup screenResolutionGroup; 
GOption p720; 
GOption p1080; 
GOption p1440; 
GToggleGroup minimumStorageGroup; 
GOption GB32; 
GOption GB64; 
GOption GB128; 
GOption GB256; 
GToggleGroup specialFeaturesGroup; 
GCheckbox wantJack; 
GCheckbox wantExpandableMemory; 
GCheckbox wantFluid; 
GCheckbox wantWaterResistance; 
GLabel phoneLabel; 
