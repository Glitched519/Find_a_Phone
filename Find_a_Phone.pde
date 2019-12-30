import g4p_controls.*;
int osChosen = 1;
int headphoneJack = 0;
String displayDesign = "bezel";
String screenPanel = "LCD";
int screenSize = 1;
int cameras = 1;
int performance = 1;
int batterySize = 1;
int dualSim = 0;
int fluidDisplay = 0;
int screenResolution = 1;
int minimumStorage = 256;
int waterResistance = 0;
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
  osChosen = 1;
  headphoneJack = 0;
  displayDesign = "bezel";
  screenPanel = "LCD";
  screenSize = 1;
  cameras = 1;
  performance = 1;
  batterySize = 1;
  dualSim = 0;
  fluidDisplay = 0;
  screenResolution = 1;
  minimumStorage = 256;
  waterResistance = 0;
}

void resetChoices() {
  iOS.setSelected(true);
  wantJack.setSelected(false);
  bezelChoice.setSelected(true);
  LCDChoice.setSelected(true);
  size1.setSelected(true);
  cameraSlider.setValue(1);
  flagship.setSelected(true);
  huge.setSelected(true);
  wantDualSim.setSelected(false);
  wantFluid.setSelected(false);
  QHD.setSelected(true);
  GB256.setSelected(true);
  tickForWaterResistance.setSelected(false);
  redraw();
  resetPrefs(); 
  resultLabel.setText("Your Phone choice is...");
}
