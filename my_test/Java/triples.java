import java.util.Arrays;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
      String[] triples = {"윤서연", "정혜린", "이지우", "김채연", "김유연", "김수민", "김나경", "공유빈", "카에데", "서다현", "코토네", "곽연지", "니엔", "박소현", "신위", "마유", "린", "주빈", "정하연", "박시온", "김채원", "설린", "서아", "지연"};
      System.out.print(Arrays.toString(triples));
      //String을 담은 배열을 출력하는 법
      
      String[] last_list = new String[4];
      
      String[] monday = Arrays.copyOfRange(triples, 0, 4);
      String[] tuesday = Arrays.copyOfRange(triples, 4, 8);
      String[] wendesday = Arrays.copyOfRange(triples, 8, 12);
      String[] thursday = Arrays.copyOfRange(triples, 12, 16);
      String[] friday = Arrays.copyOfRange(triples, 16, 20);
      
      //요일별 불가 멤버 출력하는 법
      System.out.print(Arrays.toString(friday));
      
      String s1 = "030806";
      String s2 = "070412";
      String s3 = "051024";
      String s4 = "041204";
      String s5 = "010209";
      String s6 = "071003";
      String s7 = "021013";
      String s8 = "050203";
      String s9 = "051220";
      String s10 = "030108";
      String s11 = "040310";
      String s12 = "080108";
      String s13 = "030602";
      String s14 = "021013";
      String s15 = "020525";
      String s16 = "020512";
      String s17 = "060412";
      String s18 = "090116";
      String s19 = "070801";
      String s20 = "060403";
      
      //생년월일 String 출력하는 법
      System.out.println(s2);
      
      System.out.println("막내인 서아가 학교에서 시험을 오늘 보게 되어서, 대타를 구해야 합니다.");
      Scanner toscan = new Scanner(System.in);
      System.out.print("오늘은 무슨 요일인가요?");
      String today = toscan.next();
      //오늘의 요일 출력해 보는 법
      System.out.println(today);
      
      if ("월요일".equals(today)) {
        if ((Integer.parseInt(s1) > Integer.parseInt(s2)) && (Integer.parseInt(s1) > Integer.parseInt(s3)) && (Integer.parseInt(s1) > Integer.parseInt(s4))) {
          last_list[0] = triples[0];
        }
        else if ((Integer.parseInt(s2) > Integer.parseInt(s1)) && (Integer.parseInt(s2) > Integer.parseInt(s3)) && (Integer.parseInt(s2) > Integer.parseInt(s4))) {
          last_list[0] = triples[1];
        }
        else if ((Integer.parseInt(s3) > Integer.parseInt(s1)) && (Integer.parseInt(s3) > Integer.parseInt(s2)) && (Integer.parseInt(s3) > Integer.parseInt(s4))) {
          last_list[0] = triples[2];
        }
        else {
          last_list[0] = triples[3];
        }
      }
      else if ("화요일".equals(today)) {
        if ((Integer.parseInt(s5) > Integer.parseInt(s6)) && (Integer.parseInt(s5) > Integer.parseInt(s7)) && (Integer.parseInt(s5) > Integer.parseInt(s8))) {
          last_list[0] = triples[4];
        }
        else if ((Integer.parseInt(s6) > Integer.parseInt(s5)) && (Integer.parseInt(s6) > Integer.parseInt(s7)) && (Integer.parseInt(s6) > Integer.parseInt(s8))) {
          last_list[0] = triples[5];
        }
        else if ((Integer.parseInt(s7) > Integer.parseInt(s5)) && (Integer.parseInt(s7) > Integer.parseInt(s6)) && (Integer.parseInt(s7) > Integer.parseInt(s8))) {
          last_list[0] = triples[6];
        }
        else {
          last_list[0] = triples[7];
        }
      }
      else if ("수요일".equals(today)) {
        if ((Integer.parseInt(s9) > Integer.parseInt(s10)) && (Integer.parseInt(s9) > Integer.parseInt(s11)) && (Integer.parseInt(s9) > Integer.parseInt(s12))) {
          last_list[0] = triples[8];
        }
        else if ((Integer.parseInt(s10) > Integer.parseInt(s9)) && (Integer.parseInt(s10) > Integer.parseInt(s11)) && (Integer.parseInt(s10) > Integer.parseInt(s12))) {
          last_list[0] = triples[9];
        }
        else if ((Integer.parseInt(s11) > Integer.parseInt(s9)) && (Integer.parseInt(s11) > Integer.parseInt(s10)) && (Integer.parseInt(s11) > Integer.parseInt(s12))) {
          last_list[0] = triples[10];
        }
        else {
          last_list[0] = triples[11];
        }
      }
      else if ("목요일".equals(today)) {
        if ((Integer.parseInt(s13) > Integer.parseInt(s14)) && (Integer.parseInt(s13) > Integer.parseInt(s15)) && (Integer.parseInt(s13) > Integer.parseInt(s16))) {
          last_list[0] = triples[12];
        }
        else if ((Integer.parseInt(s14) > Integer.parseInt(s13)) && (Integer.parseInt(s14) > Integer.parseInt(s15)) && (Integer.parseInt(s14) > Integer.parseInt(s16))) {
          last_list[0] = triples[13];
        }
        else if ((Integer.parseInt(s15) > Integer.parseInt(s13)) && (Integer.parseInt(s15) > Integer.parseInt(s14)) && (Integer.parseInt(s15) > Integer.parseInt(s16))) {
          last_list[0] = triples[14];
        }
        else {
          last_list[0] = triples[15];
        }
      }
      else {
        if ((Integer.parseInt(s17) > Integer.parseInt(s18)) && (Integer.parseInt(s17) > Integer.parseInt(s19)) && (Integer.parseInt(s17) > Integer.parseInt(s20))) {
          last_list[0] = triples[16];
        }
        else if ((Integer.parseInt(s18) > Integer.parseInt(s17)) && (Integer.parseInt(s18) > Integer.parseInt(s19)) && (Integer.parseInt(s18) > Integer.parseInt(s20))) {
          last_list[0] = triples[17];
        }
        else if ((Integer.parseInt(s19) > Integer.parseInt(s17)) && (Integer.parseInt(s19) > Integer.parseInt(s18)) && (Integer.parseInt(s19) > Integer.parseInt(s20))) {
          last_list[0] = triples[18];
        }
        else {
          last_list[0] = triples[19];
        }
      }
      
      last_list[1] = triples[20];
      last_list[2] = triples[21];
      last_list[3] = triples[23];
      
      System.out.println("오늘은 " + today + "이니 공연에 참여하는 멤버는" + Arrays.toString(last_list) + "입니다.");
      
      toscan.close();
    }
}
