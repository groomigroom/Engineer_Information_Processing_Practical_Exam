class Kimgroom {
  boolean aa;
  int iint;
  String nname;
  char ffav;
  double dnum;
  
  Kimgroom(boolean aa, int iint, String nname, char ffav, double dnum) {
    this.aa = aa;
    this.iint = iint;
    this.nname = nname;
    this.ffav = ffav;
    this.dnum = dnum;
  }
  
  void pprint() {
    System.out.println(aa ? "구름" : "김구름");
    System.out.println(iint + "만큼 " + nname + "이 " + ffav + "을" + dnum + "개 구매할 예정입니다.");
  }
}

class Main {
  public static void main(String[] args) {
    Kimgroom groomi = new Kimgroom(true, 1, "김구름", 'd', 3.333);
    groomi.pprint();
  }
}

/*
출력값
구름
1만큼 김구름이 d을3.333개 구매할 예정입니다.
*/
