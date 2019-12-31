import g4p_controls.*;
String osChosen = "iOS";
String headphoneJack = "no";
String displayDesign = "bezel";
String screenPanel = "LCD";
int screenSize = 1;
int cameras = 1;
String performance = "powerful";
int batterySize = 1;
String expandableMemory = "no";
String fluidDisplay = "no";
int screenResolution = 1;
int minimumStorage = 256;
String waterResistance = "no";
PrintWriter formInput;
boolean sameLines = false;
String[] specs, form, phoneNames;
boolean saved = false;

Phone phone = new Phone(osChosen, headphoneJack, displayDesign, screenPanel, 
  screenSize, cameras, performance, batterySize, expandableMemory, fluidDisplay, 
  screenResolution, minimumStorage, waterResistance);

void setup() {
  background(0);
  size(350, 560);
  createGUI();
  resetChoices();
  resetPrefs();
}

void draw() {  
  specs = loadStrings("PhoneSpecs.csv");
  form = loadStrings("preferences.csv"); //use test.txt if not working.;
  phoneNames = loadStrings("names.csv");
  for (int i = 0; i < specs.length; i++) {
    sameLines = form[0].equals(specs[i]);
    if (sameLines) {
      resultLabel.setText(phoneNames[i]);
    }
  }
  formInput = createWriter("preferences.csv");
  formInput.println(osChosen + "," + headphoneJack +"," + displayDesign + "," + 
    screenPanel + "," + screenSize + "," + cameras + "," + performance + "," +
    batterySize + "," + expandableMemory + "," + fluidDisplay + "," + screenResolution + "," +
    minimumStorage + "," + waterResistance);


  formInput.close();
}


void resetPrefs() {
  osChosen = "iOS";
  headphoneJack = "no";
  displayDesign = "bezel";
  screenPanel = "LCD";
  screenSize = 1;
  cameras = 1;
  performance = "powerful";
  batterySize = 1;
  expandableMemory = "no";
  fluidDisplay = "no";
  screenResolution = 1;
  minimumStorage = 256;
  waterResistance = "no";
}

void resetChoices() {
  iOS.setSelected(true);
  wantJack.setSelected(false);
  bezelChoice.setSelected(true);
  LCDChoice.setSelected(true);
  size1.setSelected(true);
  cameraSlider.setValue(1);
  powerful.setSelected(true);
  huge.setSelected(true);
  wantExpandableMemory.setSelected(false);
  wantFluid.setSelected(false);
  QHD.setSelected(true);
  GB256.setSelected(true);
  tickForWaterResistance.setSelected(false);
  resetPrefs();
}
