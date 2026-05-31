import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        int inf = 1;
        int iwf;
        while (true) {
            System.out.print("이동할 방향을 입력하세요. u 또는 d");
            Scanner sc = new Scanner(System.in);
            char cw = sc.next().charAt(0);
            if (inf == 1 && cw == 'd') {
                System.out.println("아래로 더 이상 이동할 수 없습니다.");
                continue;
            }
            else if (inf == 18 && cw == 'u') {
                System.out.println("위로 더 이상 이동할 수 없습니다.");
                continue;
            }
            else if (cw != 'd' && cw != 'u') {
                System.out.println("다시 입력하세요\n");
                continue;
            }
            else {
                System.out.println("이제 원하시는 층 수를 입력하세요");
                while (true) {
                    System.out.print("이동할 층을 입력하세요. 1 ~ 18");
                    iwf = sc.nextInt();
                    if (iwf == inf) {
                        System.out.println("현재 층을 입력했습니다.");
                    }
                    else if (iwf > 18 || iwf < 1) {
                        System.out.println("1 ~ 18층 사이의 숫자를 입력하세요");
                    }
                    else if (cw == 'u' && inf > iwf) {
                        System.out.println("현재 층보다 낮은 층으로 올라갈 수 없습니다.");
                    }
                    else if (cw == 'd' && inf < iwf) {
                        System.out.println("현재 층보다 높은 층으로 내려갈 수 없습니다.");
                    }
                    else {
                        System.out.println(iwf + "층으로 이동하겠습니다.");
                        inf = iwf;
                        break; 
                    }
                }
            }
       
        }
    }
}
