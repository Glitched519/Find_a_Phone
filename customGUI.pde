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
      .setColorCaptionLabel(color(0))
      .setColorBackground(color(255, 128, 128))
      .setLock(true);   
    performanceLabel = cp5.addButton("Performance")
      .setPosition(10, 80)
      .setSize(160, 20)
      .setFont(labelFont)
      .setColorCaptionLabel(color(0))
      .setColorBackground(color(255, 179, 102))
      .setLock(true);
    displayDesignLabel = cp5.addButton("Display Design")
      .setPosition(10, 170)
      .setSize(160, 20)
      .setFont(labelFont)
      .setColorCaptionLabel(color(0))
      .setColorBackground(color(128, 255, 128))
      .setLock(true);
    batterySizeLabel = cp5.addButton("Battery Size (mAh)")
      .setPosition(10, 280)
      .setSize(160, 20)
      .setFont(labelFont)
      .setColorCaptionLabel(color(0))
      .setColorBackground(color(140, 217, 179))
      .setLock(true);
    screenSizeLabel = cp5.addButton("Screen Size (inches)")
      .setPosition(10, 390)
      .setSize(160, 20)
      .setFont(labelFont)
      .setColorCaptionLabel(color(0))
      .setColorBackground(color(102, 153, 255))
      .setLock(true);
    screenPanelLabel = cp5.addButton("Screen Panel")
      .setPosition(180, 10)
      .setSize(160, 20)
      .setFont(labelFont)
      .setColorCaptionLabel(color(0))
      .setColorBackground(color(255, 128, 128))
      .setLock(true);   
    screenResolutionLabel = cp5.addButton("Screen Resolution")
      .setPosition(180, 80)
      .setSize(160, 20)
      .setFont(labelFont)
      .setColorCaptionLabel(color(0))
      .setColorBackground(color(255, 179, 102))
      .setLock(true);
    minimumStorageLabel = cp5.addButton("Minimum Storage (GB)")
      .setPosition(180, 170)
      .setSize(160, 20)
      .setFont(labelFont)
      .setColorCaptionLabel(color(0))
      .setColorBackground(color(128, 255, 128))
      .setLock(true);
    specialFeaturesLabel = cp5.addButton("Special Features?")
      .setPosition(180, 280)
      .setSize(160, 20)
      .setFont(labelFont)
      .setColorCaptionLabel(color(0))
      .setColorBackground(color(140, 217, 179))
      .setLock(true);
    rearCamerasLabel = cp5.addButton("# of Rear Cameras")
      .setPosition(180, 390)
      .setSize(160, 20)
      .setFont(labelFont)
      .setColorCaptionLabel(color(0))
      .setColorBackground(color(102, 153, 255))
      .setLock(true);
    buyThePhoneFromLabel = cp5.addButton("Buy the phone from: ")
      .setPosition(560, 340)
      .setSize(160, 20)
      .setFont(labelFont)
      .setColorCaptionLabel(color(0))
      .setColorBackground(color(255, 102, 255))
      .setLock(true);
    sourceLabel = cp5.addButton("All phone images are provided by and sourced from GSMArena.com.")
      .setPosition(550, height-15)
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
      .setSize(200, 530)
      .setFont(listFont)
      .setBarHeight(25)
      .setItemHeight(20)
      .addItems(phoneNames)
      .removeItem(phoneNames[0]);
  }

  ///Setup shopping and reset buttons
  void initButtons() {
    resetButton = cp5.addButton("Reset")
      .setPosition(230, 520)
      .setSize(110, 25)
      .setFont(buttonFont)
      .setColorForeground(color(255, 0, 0))
      .setColorBackground(color(204, 0, 0))
      .setColorActive(color(179, 0, 0));
    walmartButton = cp5.addButton("Walmart.com")
      .setFont(buttonFont)
      .setPosition(560, 370)
      .setSize(160, 50)
      .setColorForeground(color(0, 77, 230))
      .setColorBackground(color(66, 135, 245))
      .setLock(true);
    amazonButton = cp5.addButton("Amazon.com")
      .setFont(buttonFont)
      .setPosition(560, 430)
      .setSize(160, 50)
      .setColorForeground(color(0, 230, 0))
      .setColorBackground(color(179, 179, 0))
      .setLock(true);  
    eBayButton = cp5.addButton("eBay.com")
      .setFont(buttonFont)
      .setPosition(560, 490)
      .setSize(160, 50)
      .setColorForeground(color(230, 0, 0))
      .setColorBackground(color(255, 51, 51))
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

    //Reset the choices selected back to their default values
    img = loadImage("images/unknown.jpg");
    image(img, 560, 10);
    iOS.setSelected(true);
    wantJack.setSelected(false);
    bezel.setSelected(true);
    LCD.setSelected(true);
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
