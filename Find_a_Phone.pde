import g4p_controls.*;

//Declares all 13 specs
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
String amazonURL, eBayURL, walmartURL;
PImage img;
String search;
String[] specComponents;


Phone phone = new Phone(osChosen, headphoneJack, displayDesign, screenPanel, 
  screenSize, cameras, performance, batterySize, expandableMemory, fluidDisplay, 
  screenResolution, minimumStorage, waterResistance);

void setup() {
  background(0);
  size(730, 550);
  loadCSVs(); 
  createGUI();
  resetChoices();
  resetPrefs();
  checkDuplicateSpecs();
  
  //PhoneList is uneditable and shows all phones names from names.csv
  phoneList.setTextEditEnabled(false);
  for (int i = 1; i < phoneNames.length; i++) {
    phoneList.appendText(phoneNames[i]);
  }
}

void draw() {  
  loadCSVs();
  search = phoneSearch.getText();
  
  //Writes all choices chosen into this file
  formInput = createWriter("CSV/preferences.csv");
    
  /*If the input file for some reason is empty, then write anything into it as long as 
  it is only one line long.*/  
  for (int i = 0; i < specs.length; i++) {
    try {
      sameLines = form[0].equals(specs[i]);
    }
    catch(ArrayIndexOutOfBoundsException e) {
      formInput.println("1");
    }
    
    //Hit Enter to write the choices to the form input file and get a matching result
    if (keyCode == ENTER) {
           
      /*If the choices match any specs in the specs database or search string matches 
      with any phone name.*/ 
      if (sameLines || search.equals(phoneNames[i])) {
        //Loads image, three links, and phone search string based on phone name
        img = loadImage("images/" + phoneNames[i] + ".jpg");
        image(img, 560, 10);
        eBayURL = "https://www.ebay.com/sch/i.html?_from=R40&_trksid=p2380057.m570.l1313.TR12.TRC2.A0.H0.X"
          + phoneNames[i].replace(" ", "+") + ".TRS0&_nkw=" + phoneNames[i].replace(" ", "+") + "&_sacat=0";
        amazonURL = "https://www.amazon.com/s?k=" + phoneNames[i].replace(" ", "+") + "&ref=nb_sb_noss_2";
        walmartURL = "https://www.walmart.com/search/?query=" + phoneNames[i].replace(" ", "%20");
        amazonButton.setEnabled(true);
        eBayButton.setEnabled(true);
        walmartButton.setEnabled(true);
        phoneSearch.setText(phoneNames[i]);
        
        //Sets the spec values to each of the array components loaded
        specComponents = splitTokens(specs[i], ",");
        osChosen = specComponents[0];
        headphoneJack = specComponents[1];
        displayDesign = specComponents[2];
        screenPanel = specComponents[3];
        String scrs = str(screenSize);
        scrs = specComponents[4];
        String cams = str(cameras);
        cams = specComponents[5];
        performance = specComponents[6];
        String batt = str(batterySize);
        batt = specComponents[7];
        expandableMemory = specComponents[8];
        fluidDisplay = specComponents[9];  
        String scrr = str(screenResolution);
        scrr = specComponents[10];
        String mins = str(minimumStorage);
        mins = specComponents[11];
        waterResistance = specComponents[12];
        phone.matchChoicesWithSpecs();
        
        //Used here to prevent NullPointerException
        phoneSearch.setTextEditEnabled(false); 
      }
    }
    
    //This is what the spec strings llook like in form input and phone specs databases.
    formInput.println(osChosen + "," + headphoneJack +"," + displayDesign + "," + 
      screenPanel + "," + screenSize + "," + cameras + "," + performance + "," +
      batterySize + "," + expandableMemory + "," + fluidDisplay + "," + screenResolution + "," +
      minimumStorage + "," + waterResistance);
    formInput.close();
  }
}

//Resets the specs values back to their defaults
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

//Resets the choices selected back to their default values
void resetChoices() {
  phoneSearch.setText("");
  phoneSearch.setTextEditEnabled(true);
  img = loadImage("images/unknown.jpg");
  image(img, 560, 10);
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
  wantWaterResistance.setSelected(false);
  amazonButton.setEnabled(false);
  eBayButton.setEnabled(false);
  walmartButton.setEnabled(false);
}

//loads the "strings" from the database files
void loadCSVs() {
  specs = loadStrings("CSV/PhoneSpecs.csv");
  form = loadStrings("CSV/preferences.csv");
  phoneNames = loadStrings("CSV/names.csv");
}

/*If any specs are duplicate in PhoneSpecs.csv, it will say which phones have duplicate
specs in the console. This is necessary because this application is designed to show
one phone as an output from the application window.*/
void checkDuplicateSpecs() {
  for (int i = 1; i < specs.length; i++) {
    for (int j = 1; j < specs.length-1; j++) {
      if (specs[i].equals(specs[j])) {
        if (phoneNames[j].equals(phoneNames[i]) || phoneNames[i].equals(phoneNames[j])) {
          //println("same", j);
        } else {
          println(phoneNames[i], "specs match with", phoneNames[j], "specs.");
        }
      }
    }
  }
}
