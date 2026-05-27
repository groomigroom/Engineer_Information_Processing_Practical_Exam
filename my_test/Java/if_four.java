public class Main {
    public static void main (String[] args) {
        int a = 1;
        int b = 2;
        int c = 3;
        int d = 44;
        if (a > b) {
            b += 1;
            if (a > c) {
                c += 1;
                if (a > d) {
                    d += 1;
                }
                else if (a < d) {
                    a += 1;
                }
                else {
                    a += 12;
                }
            }
            else if (c > a) {
                a += 1;
                if (a < d) {
                    a += 1;
                }
                else if (a == d) {
                    a += 1;
                }
                else {
                    d += 21;
                }
            }
            else {
                a += 0;
                if (a == d) {
                    a += 1;
                }
                else if (a < d) {
                    a += 1;
                }
                else {
                    d += 1;
                }
            }
        }
        else if (a == b) {
            a += 0;
            if (a == c) {
                c += 0;
                if (a > d) {
                    d += 1;
                }
                else if (a < d) {
                    a += 1;
                }
                else {
                    a += 12;
                }
            }
            else if (a > c) {
                c += 1;
                if (a == d) {
                    a += 1;
                }
                else if (a < d) {
                    a += 1;
                }
                else {
                    d += 1;
                }
            }
            else {
                a += 1;
                if (a < d) {
                    a += 1;
                }
                else if (a == d) {
                    a += 1;
                }
                else {
                    d += 21;
                }
            }
        }
        else {
            a += 1;
            if (a < c) {
                a += 1;
                if (a < d) {
                    a += 1;
                }
                else if (a == d) {
                    a += 1;
                }
                else {
                    d += 21;
                }
            }
            else if (a == c) {
                c += 2;
                if (a < d) {
                    a += 12;
                }
                else if (a == d) {
                    a += 11;
                }
                else {
                    d += 121;
                }
            }
            else {
                c += 1;
                if (a < d) {
                    a += 11;
                }
                else if (a == d) {
                    a += 122;
                }
                else {
                    d += 211;
                }
            }
        }
        System.out.print(a + b + c + d);
    }
}
/* 
int a = 1;
        int b = 2;
        int c = 3;
        int d = 44;

        a = 2
        a = 3
        a = 4
        출력값 53
*/
