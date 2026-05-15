class Dogland {
  boolean bopp;
  int iage;
  String stfav;
  String stname;
  
  Dogland(boolean bopp, int iage, String stfav, String stname) {
    this.bopp = bopp;
    this.iage = iage;
    this.stfav = stfav;
    this.stname = stname;
  }
  
  void outFunction() {
    if (bopp) {
      iage += 11;
    } else {
      iage -= 11;
    }
    if (stfav.length() > 3) {
      if (stname.length() > 3) {
        iage -= 11;
      } else {
        iage += 11;
      }
    }
    else {
      if (stname.length() > 3) {
        iage += 11;
      } else {
        iage -= 121;
      } 
    }
    for (int i = 0; i < 4; i++) {
      System.out.println(iage + " " + stfav + " " + stname + " ");
      iage += iage;
      System.out.println(iage + " " + stname + " " + stfav + " ");
    }  
  }
}

class lastOut {
  public static void main(String[] args) {
    Dogland groomi = new Dogland(false, 3, "brother", "goo");
    groomi.outFunction();
  }
}
