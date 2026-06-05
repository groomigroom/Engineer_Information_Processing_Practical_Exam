interface Number_part {
  int sso(int a, boolean dd);
}

class Ssonum implements Number_part {
  public int sso(int a, boolean dd) {
    int googoo = 3;
    googoo = dd ? googoo + a : googoo - a;
    return googoo;
  }
}

public class Main {
  public static void main(String[] args) {
    int a = 9;
    Ssonum goou = new Ssonum();
    System.out.println(goou.sso(a, true));
  }
}
//12
