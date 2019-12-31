Table phoneSpecs;

class Phone {
  String os;
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

  Phone(String os, String hj, String dd, String sp, int ss, int c, String p, int bs, 
    String em, String fd, int sr, int ms, String wr) {
    this.os = os;
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
}
