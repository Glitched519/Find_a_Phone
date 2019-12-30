import g4p_controls.*;
String osChosen = "iOS";
String headphoneJack = "no";
String displayDesign = "bezel";
String screenPanel = "LCD";
int screenSize = 1;
int cameras = 1;
String performance = "powerful";
int batterySize = 1;
String dualSim = "no";
String fluidDisplay = "no";
int screenResolution = 1;
int minimumStorage = 256;
String waterResistance = "no";
PrintWriter formInput;
boolean sameLines = false;
String[] specs, form, phoneNames;
boolean saved = false;
int bar = 1;

Phone phone = new Phone(osChosen, headphoneJack, displayDesign, screenPanel, 
  screenSize, cameras, performance, batterySize, dualSim, fluidDisplay, 
  screenResolution, minimumStorage, waterResistance);

void setup() {
  size(400, 750);
  background(0);
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
      bar += 1;
    }
  }
  formInput = createWriter("preferences.csv");
  formInput.println(osChosen + "," + headphoneJack +"," + displayDesign + "," + 
    screenPanel + "," + screenSize + "," + cameras + "," + performance + "," +
    batterySize + "," + dualSim + "," + fluidDisplay + "," + screenResolution + "," +
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
  dualSim = "no";
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
  wantDualSim.setSelected(false);
  wantFluid.setSelected(false);
  QHD.setSelected(true);
  GB256.setSelected(true);
  tickForWaterResistance.setSelected(false);
  redraw();
  resetPrefs(); 
}
