class pllus {
    int left, right;
    
    public pllus (int left, int right) {
        this.left = left;
        this.right = right;
    }
    
    public void ssuum() {
        System.out.println(this.left + this.right + this.left);
    }
    
    public void avvgg() {
        System.out.println(this.left * this.right / this.left);
    }
}

public class Main {
    public static void main(String[] args) {
        pllus pp = new pllus(20, 25);
        pp.ssuum();
        pp.avvgg();
    }
}
//65
//25
