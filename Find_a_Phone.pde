//Both G4P and ControlP5 elements will be used for the GUI of this application
import g4p_controls.*;
import controlP5.*;

//Meta components
PrintWriter formInput;
boolean foundMatch = false;
String[] specs, form, phoneNames, specComponents;
String amazonURL, eBayURL, walmartURL, search;
PImage img;

//Initializes controls for ControlP5's GUI (better than G4P's)
ControlP5 cp5;

//Create instances of phone and custom GUI
Phone phone = new Phone();
CustomGUI gui = new CustomGUI();

//Prepares window on start
void setup() {
  background(0);
  size(730, 560);
  loadCSVs(); 
  cp5 = new ControlP5(this); //Some elements are controlled using ControlP5
  checkDuplicateSpecs(); 

  //Sets fonts for ControlP5 elements
  gui.listFont = createFont("Noto Sans Condensed Bold", 14);
  gui.labelFont = createFont("Arial", 13);
  gui.buttonFont = createFont("Noto Sans Bold", 18);
  img = loadImage("images/unknown.jpg");
  image(img, 560, 10);
  gui.custom();  //Creates ControlP5 custom GUI
  createGUI();  //Creates G4P GUI
}

//Runs constantly
void draw() {
  phone.cameras = (int) gui.cameraSlider.getValue();
  gui.checkResetButtonPressed();
  //Phone list/menu is always open
  if (!gui.phoneList.isOpen()) {
    gui.phoneList.open();
  }

  loadCSVs();
  search = phoneLabel.getText();

  //Writes all choices chosen into this file
  formInput = createWriter("CSV/preferences.csv");

  /*If the input file for some reason is empty, then write anything into it as long as 
   it is only one line long.*/
  for (int i = 0; i < specs.length; i++) {
    try {
      foundMatch = form[0].equals(specs[i]);
    }
    catch(ArrayIndexOutOfBoundsException e) {
      formInput.println("1");
    }

    //If the label of the phone list doesn't match with to bottom label, then match both labels
    if (!search.equals(gui.phoneList.getLabel())) { 
      phoneLabel.setText(gui.phoneList.getLabel());
    }

    /*If the choices match any specs in the specs database or search string matches 
     with any phone name.*/
    else if (foundMatch || search.equals(phoneNames[i])) {

      //Loads image, three links, and phone search string based on phone name
      gui.phoneList.setLabel(phoneNames[i]);
      phoneLabel.setText(phoneNames[i]);
      img = loadImage("images/" + phoneNames[i] + ".jpg");
      image(img, 560, 10);
      eBayURL = "https://www.ebay.com/sch/i.html?_from=R40&_trksid=p2380057.m570.l1313.TR12.TRC2.A0.H0.X"
        + phoneNames[i].replace(" ", "+") + ".TRS0&_nkw=" + phoneNames[i].replace(" ", "+") + "&_sacat=0";
      amazonURL = "https://www.amazon.com/s?k=" + phoneNames[i].replace(" ", "+") + "&ref=nb_sb_noss_2";
      walmartURL = "https://www.walmart.com/search/?query=" + phoneNames[i].replace(" ", "%20");
      gui.enableShoppingButtons();

      //Sets the spec values to each of the array components loaded
      specComponents = splitTokens(specs[i], ",");
      phone.osChosen = specComponents[0];
      phone.headphoneJack = specComponents[1];
      phone.displayDesign = specComponents[2];
      phone.screenPanel = specComponents[3];
      String scrs = str(phone.screenSize);
      scrs = specComponents[4];
      String cams = str(phone.cameras);
      cams = specComponents[5];
      phone.performance = specComponents[6];
      String batt = str(phone.batterySize);
      batt = specComponents[7];
      phone.expandableMemory = specComponents[8];
      phone.fluidDisplay = specComponents[9];  
      String scrr = str(phone.screenResolution);
      scrr = specComponents[10];
      String mins = str(phone.minimumStorage);
      mins = specComponents[11];
      phone.waterResistance = specComponents[12];
      phone.matchChoicesWithSpecs();
    }

    //This is what the spec strings look like in form input and phone specs databases:
    formInput.println(phone.osChosen + "," + phone.headphoneJack +"," + phone.displayDesign + ","
      + phone.screenPanel + "," + phone.screenSize + "," + phone.cameras + "," + phone.performance 
      + "," + phone.batterySize + "," + phone.expandableMemory + "," + phone.fluidDisplay + "," 
      + phone.screenResolution + "," + phone.minimumStorage + "," + phone.waterResistance);
    formInput.close();
  }
}

//Loads the "strings" from the database files
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
