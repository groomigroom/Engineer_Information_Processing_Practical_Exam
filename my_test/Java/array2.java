import java.util.*;

public class Main {
    static int[][] arrays (int[][] mm) {
        int i = 0;
        int[][] m = new int[4][1];
        for (i = 0; i < 4; i++) {
          m[i][0] = mm[i][0];
        }
        return m;
    }
  
    public static void main(String[] args) {
        int[][] mm = new int[4][1];
        mm = new int[][]{
            {1},
            {2},
            {3},
            {4}
        };
        int[][] result = arrays(mm);
        System.out.println(result[1][0] + result[3][0]);
    }
}
//2 + 4 == 6
