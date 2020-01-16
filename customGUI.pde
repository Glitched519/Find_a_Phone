class CustomGUI {

  Button walmartButton, eBayButton, amazonButton, resetButton;
  Textlabel l;
  Slider cameraSlider;

  DropdownList phoneList;
  PFont listFont, buttonFont;

  void custom() {
    initPhoneList();
    initButtons();
    initSlider();
  }

  void checkResetButtonPressed() {
    if (resetButton.isMousePressed()) {
      reset();
    }
  }

  void initSlider() {
    cameraSlider = cp5.addSlider("");
    cameraSlider.setRange(1, 5);
    cameraSlider.setDecimalPrecision(0);
    cameraSlider.setNumberOfTickMarks(5);
    cameraSlider.setPosition(180, 420);
    cameraSlider.setSize(160, 20);
    cameraSlider.setFont(listFont);
  }

  void enableShoppingButtons() {
    amazonButton.setLock(false);
    eBayButton.setLock(false);
    walmartButton.setLock(false);
    shoppingButtonClicked(amazonButton, amazonURL);
    shoppingButtonClicked(eBayButton, eBayURL);
    shoppingButtonClicked(walmartButton, walmartURL);
  }

  void initPhoneList() {
    phoneList = cp5.addDropdownList("Find a phone from the list");
    phoneList.setPosition(350, 10);
    phoneList.setSize(200, 530);
    phoneList.setFont(listFont);
    phoneList.setBarHeight(25);
    phoneList.setItemHeight(20);
    phoneList.addItems(phoneNames);
    phoneList.removeItem(phoneNames[0]);
  }

  void initButtons() {
    resetButton = cp5.addButton("Reset");
    resetButton.setPosition(230, 520);
    resetButton.setSize(110, 25);
    resetButton.setFont(buttonFont);
    resetButton.setColorForeground(color(255, 0, 0));
    resetButton.setColorBackground(color(204, 0, 0));
    resetButton.setColorActive(color(179, 0, 0));
    walmartButton = cp5.addButton("Walmart.com"); 
    walmartButton.setFont(buttonFont);
    walmartButton.setPosition(560, 370);
    walmartButton.setSize(160, 50);
    walmartButton.setColorForeground(color(0, 77, 230));
    walmartButton.setColorBackground(color(66, 135, 245));
    walmartButton.setLock(true);
    amazonButton = cp5.addButton("Amazon.com"); 
    amazonButton.setFont(buttonFont);
    amazonButton.setPosition(560, 430);
    amazonButton.setSize(160, 50);
    amazonButton.setColorForeground(color(0, 230, 0));
    amazonButton.setColorBackground(color(179, 179, 0));
    amazonButton.setLock(true);  
    eBayButton = cp5.addButton("eBay.com"); 
    eBayButton.setFont(buttonFont);
    eBayButton.setPosition(560, 490);
    eBayButton.setSize(160, 50);
    eBayButton.setColorForeground(color(230, 0, 0));
    eBayButton.setColorBackground(color(255, 51, 51));
    eBayButton.setLock(true);
  }

  void shoppingButtonClicked(Button source, String URL) { 
    if (source.isMousePressed()) {
      gui.initButtons();
      link(URL);
    }
  } 

  void reset() {
    gui.initPhoneList();

    //Resets the specs values back to their defaults
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

    //Resets the choices selected back to their default values
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
