Table phoneSpecs;

class Phone {
  int os;
  int headphoneJack;
  String displayDesign;
  String screenPanel;
  int screenSize;
  int cameras;
  int performance;
  int batterySize;
  int dualSim;
  int fluidDisplay;
  int screenResolution;
  int minimumStorage;
  int waterResistance;

  Phone(int os, int hj, String dd, String sp, int ss, int c, int p, int bs, 
    int ds, int fd, int sr, int ms, int wr) {
    this.os = os;
    this.headphoneJack = hj; 
    this.displayDesign = dd;
    this.screenPanel = sp;
    this.screenSize = ss;
    this.cameras = c;
    this.performance = p;
    this.batterySize = bs;
    this.dualSim = ds;
    this.fluidDisplay = fd;
    this.screenResolution = sr;
    this.minimumStorage = ms;
    this.waterResistance = wr;
  }
}
