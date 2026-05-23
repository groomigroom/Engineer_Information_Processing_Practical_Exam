class Groom {
    int x;
    int y;
    
    public int groom(int x, int y) {
        x = x + y;
        return x;
    }
}

public class Main {
    public static void main (String[] args) {
        Groom m = new Groom();
        System.out.print(m.groom(1, 2));
    }
}
//출력값 3
