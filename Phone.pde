class Phone {
  String osChosen;
  String headphoneJack;
  String displayDesign;
  String screenPanel;
  int screenSize;
  int cameras;
  String performance;
  int batterySize;
  String expandableMemory;
  String fluidDisplay;
  int screenResolution;
  int minimumStorage;
  String waterResistance;

  //Phone constructor
  Phone(String os, String hj, String dd, String sp, int ss, int c, String p, int bs, 
    String em, String fd, int sr, int ms, String wr) {
    this.osChosen = os;
    this.headphoneJack = hj; 
    this.displayDesign = dd;
    this.screenPanel = sp;
    this.screenSize = ss;
    this.cameras = c;
    this.performance = p;
    this.batterySize = bs;
    this.expandableMemory = em;
    this.fluidDisplay = fd;
    this.screenResolution = sr;
    this.minimumStorage = ms;
    this.waterResistance = wr;
  }

  //Sets the choices based on the chosen phone's specs
  void matchChoicesWithSpecs() {

    //Mobile OS
    if (specComponents[0].equals("Android")) {
      Android.setSelected(true);
    } else if (specComponents[0].equals("iOS")) {
      iOS.setSelected(true);
    }

    //Headphone Jack
    if (specComponents[1].equals("yes")) {
      wantJack.setSelected(true);
    } else if (specComponents[1].equals("no")) {
      wantJack.setSelected(false);
    }

    //Display Design
    if (specComponents[2].equals("bezel")) {
      bezel.setSelected(true);
    } else if (specComponents[2].equals("bezel-free")) {
      bezelFree.setSelected(true);
    } else if (specComponents[2].equals("hole")) {
      hole.setSelected(true);
    } else if (specComponents[2].equals("notch")) {
      notch.setSelected(true);
    }

    //Screen Panel
    if (specComponents[3].equals("LCD")) {
      LCD.setSelected(true);
    } else if (specComponents[3].equals("OLED")) {
      OLED.setSelected(true);
    }

    //Screen Size
    if (specComponents[4].equals("1")) {
      size1.setSelected(true);
    } else if (specComponents[4].equals("2")) {
      size2.setSelected(true);
    } else if (specComponents[4].equals("3")) {
      size3.setSelected(true);
    } else if (specComponents[4].equals("4")) {
      size4.setSelected(true);
    } 
    if (specComponents[4].equals("5")) {
      size5.setSelected(true);
    }

    //Number of Rear Cameras
    gui.cameraSlider.setValue(Integer.parseInt(specComponents[5]));
    //Performance
    if (specComponents[6].equals("powerful")) {
      powerful.setSelected(true);
    } else if (specComponents[6].equals("midrange")) {
      midrange.setSelected(true);
    } else if (specComponents[6].equals("budget")) {
      budget.setSelected(true);
    }

    //Battery Size
    if (specComponents[7].equals("1")) {
      HUGE.setSelected(true);
    } else if (specComponents[7].equals("2")) {
      large.setSelected(true);
    } else if (specComponents[7].equals("3")) {
      regular.setSelected(true);
    } else if (specComponents[7].equals("4")) {
      small.setSelected(true);
    }

    //Expandable Memory
    if (specComponents[8].equals("yes")) {
      wantExpandableMemory.setSelected(true);
    } else if (specComponents[8].equals("no")) {
      wantExpandableMemory.setSelected(false);
    }

    //Fluid Display
    if (specComponents[9].equals("yes")) {
      wantFluid.setSelected(true);
    } else if (specComponents[9].equals("no")) {
      wantFluid.setSelected(false);
    }

    //Screen Resolution
    if (specComponents[10].equals("1")) {
      p1440.setSelected(true);
    } else if (specComponents[10].equals("2")) {
      p1080.setSelected(true);
    } else if (specComponents[10].equals("3")) {
      p720.setSelected(true);
    }

    //Minimum Storage
    if (specComponents[11].equals("256")) {
      GB256.setSelected(true);
    } else if (specComponents[11].equals("128")) {
      GB128.setSelected(true);
    } else if (specComponents[11].equals("64")) {
      GB64.setSelected(true);
    } else if (specComponents[11].equals("32")) {
      GB32.setSelected(true);
    }

    //Water Resistance
    if (specComponents[12].equals("yes")) {
      wantWaterResistance.setSelected(true);
    } else if (specComponents[12].equals("no")) {
      wantWaterResistance.setSelected(false);
    }
  }
}
