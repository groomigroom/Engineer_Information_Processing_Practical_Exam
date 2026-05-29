class Calc {
  int left, right;
  
  public Calc (int left, int right) {
    this.left = left;
    this.right = right;
  }
  
  public void sum() {
    System.out.println(this.left + this.right + this.left);
  }
  
  public void agg() {
    System.out.println(this.left * this.right / 3);
  }
}

public class Main {
  public static void main(String[] args) {
    Calc c1 = new Calc(10, 22);
    c1.sum();
    //42
    c1.agg();
    //73
  }
}
