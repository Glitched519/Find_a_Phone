class CustomGUI {

  Button walmartButton, eBayButton, amazonButton, resetButton;

  /*Using disabled buttons to help render the label properly with background.
   Textlabel caused rendering issues and had no background. */
  Button mobileOSLabel, performanceLabel, displayDesignLabel, batterySizeLabel, screenSizeLabel, 
    screenPanelLabel, screenResolutionLabel, minimumStorageLabel, specialFeaturesLabel, 
    rearCamerasLabel, phoneLabel, buyThePhoneFromLabel, sourceLabel;
  Slider cameraSlider;  

  DropdownList phoneList;
  PFont listFont, buttonFont, labelFont;

  //Called in setup()
  void custom() {
    initPhoneList();
    initButtons();
    initSlider();
    initLabels();
  }

  //If the resetButton is pressed, then reset the GUI.
  void checkResetButtonPressed() {
    if (resetButton.isMousePressed()) {
      reset();
    }
  }

  //Setup all labels and aesthetic features as disabled buttons
  void initLabels() {
    mobileOSLabel = cp5.addButton("Mobile OS")
      .setPosition(10, 10)
      .setSize(160, 20)
      .setFont(labelFont)
      .setLock(true); 
    performanceLabel = cp5.addButton("Performance")
      .setPosition(10, 80)
      .setSize(160, 20)
      .setFont(labelFont)
      .setLock(true);
    displayDesignLabel = cp5.addButton("Display Design")
      .setPosition(10, 170)
      .setSize(160, 20)
      .setFont(labelFont)
      .setLock(true);
    batterySizeLabel = cp5.addButton("Battery Size (mAh)")
      .setPosition(10, 280)
      .setSize(160, 20)
      .setFont(labelFont)
      .setLock(true);
    screenSizeLabel = cp5.addButton("Screen Size (inches)")
      .setPosition(10, 390)
      .setSize(160, 20)
      .setFont(labelFont)
      .setLock(true);
    screenPanelLabel = cp5.addButton("Screen Panel")
      .setPosition(180, 10)
      .setSize(160, 20)
      .setFont(labelFont)
      .setLock(true);   
    screenResolutionLabel = cp5.addButton("Screen Resolution")
      .setPosition(180, 80)
      .setSize(160, 20)
      .setFont(labelFont)
      .setLock(true);
    minimumStorageLabel = cp5.addButton("Minimum Storage (GB)")
      .setPosition(180, 170)
      .setSize(160, 20)
      .setFont(labelFont)
      .setLock(true);
    specialFeaturesLabel = cp5.addButton("Special Features?")
      .setPosition(180, 280)
      .setSize(160, 20)
      .setFont(labelFont)
      .setLock(true);
    rearCamerasLabel = cp5.addButton("# of Rear Cameras")
      .setPosition(180, 390)
      .setSize(160, 20)
      .setFont(labelFont)
      .setLock(true);
    buyThePhoneFromLabel = cp5.addButton("Buy the phone from: ")
      .setPosition(width-170, height-225)
      .setSize(160, 20)
      .setFont(labelFont)
      .setColorBackground(color(230, 0, 230))
      .setLock(true);
    sourceLabel = cp5.addButton("All phone images are provided by and sourced from GSMArena.com.")
      .setPosition(width-175, height-15)
      .setColorBackground(color(0))
      .setLock(true);
  }

  //Setup features for cameraSlider
  void initSlider() {
    cameraSlider = cp5.addSlider("")
      .setRange(1, 5)
      .setDecimalPrecision(0)
      .setNumberOfTickMarks(5)
      .setPosition(180, 410)
      .setSize(160, 25)
      .setFont(listFont);
  }

  //Setup Amazon, eBay, and Walmart shopping buttons
  void enableShoppingButtons() {
    amazonButton.setLock(false);
    eBayButton.setLock(false);
    walmartButton.setLock(false);
    shoppingButtonClicked(amazonButton, amazonURL);
    shoppingButtonClicked(eBayButton, eBayURL);
    shoppingButtonClicked(walmartButton, walmartURL);
  }

  //Setup phone list features
  void initPhoneList() {
    phoneList = cp5.addDropdownList("Find a phone from the list")
      .setPosition(350, 10)
      .setSize(270, height-20)
      .setFont(listFont)
      .setBarHeight(25)
      .setItemHeight(20)
      .addItems(phoneNames)
      .removeItem(phoneNames[0]);
  }

  ///Setup shopping and reset buttons
  void initButtons() {
    resetButton = cp5.addButton("Reset")
      .setPosition(230, height-35)
      .setSize(110, 25)
      .setFont(buttonFont)
      .setColorBackground(color(175, 0, 0))
      .setColorForeground(color(215, 0, 0))
      .setColorActive(color(255, 0, 0));
    walmartButton = cp5.addButton("Walmart.com")
      .setFont(buttonFont)
      .setPosition(width-170, height-195)
      .setSize(160, 50)
      .setColorForeground(color(0, 77, 230))
      .setLock(true);
    amazonButton = cp5.addButton("Amazon.com")
      .setFont(buttonFont)
      .setPosition(width-170, height-135)
      .setSize(160, 50)
      .setColorForeground(color(0, 152, 0))
      .setLock(true);  
    eBayButton = cp5.addButton("eBay.com")
      .setFont(buttonFont)
      .setPosition(width-170, height-75)
      .setSize(160, 50)
      .setColorForeground(color(230, 0, 0))
      .setLock(true);
  }

  //Redirect user to website with phone in search bar
  void shoppingButtonClicked(Button source, String URL) { 
    if (source.isMousePressed()) {
      gui.initButtons();
      link(URL);
    }
  } 

  //Reset GUI and values
  void reset() {
    gui.initPhoneList();

    //Reset the specs values back to their defaults
    phone.osChosen = "iOS";
    phone.headphoneJack = "no";
    phone.displayDesign = "bezel";
    phone.screenPanel = "OLED";
    phone.screenSize = 1;
    phone.cameras = 1;
    phone.performance = "powerful";
    phone.batterySize = 1;
    phone.expandableMemory = "no";
    phone.fluidDisplay = "no";
    phone.screenResolution = 1;
    phone.minimumStorage = 256;
    phone.waterResistance = "no";

    //Reset the choices selected back to their default values
    img = loadImage("images/unknown.jpg");
    image(img, width-170, 10);
    iOS.setSelected(true);
    wantJack.setSelected(false);
    bezel.setSelected(true);
    OLED.setSelected(true);
    size1.setSelected(true);
    cameraSlider.setValue(1);
    powerful.setSelected(true);
    HUGE.setSelected(true);
    wantExpandableMemory.setSelected(false);
    wantFluid.setSelected(false);
    p1440.setSelected(true);
    GB256.setSelected(true);
    wantWaterResistance.setSelected(false);
    amazonButton.setLock(true);
    eBayButton.setLock(true);
    walmartButton.setLock(true);
  }
}
