public class Main {
  static String[] s = new String[5];
  static String i = "";
  
    public static String func (String[] s, int num1, int num2) {
      i = s[num2];
      s[num2] = s[num1];
      s[num1] = i;
      return s[num2] + s[num2] + s[num1];
    }
  
    public static void main(String[] args) {
      s[0] = "g";
      s[1] = "r";
      s[2] = "o";
      s[3] = "o";
      s[4] = "m";
      
      String result = func(s, 3, 2);
      System.out.println("결과 " + result);
    }
}
/*
출력값

결과 ooo
*/
