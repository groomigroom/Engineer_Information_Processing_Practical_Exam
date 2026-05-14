public class Main {
  public static void main(String[] args) {
    int inum1, inum2, inum3, inum4, inum5;
    inum3 = 0;
    int [][] iarr = new int[3][5];
    for (inum1 = 0; inum1 < 3; inum1++)
    {
      for (inum2 = 0; inum2 < 5; inum2++)
      {
          inum3 += 3;
          iarr[inum1][inum2] = inum3;
      }
    }

    for (inum4 = 0; inum4 < 3; inum4++)
    {
      for (inum5 = 0; inum5 < 5; inum5++)
      {
        System.out.print(iarr[inum4][inum5] + " ");
      }
      System.out.println();
    }
    int inum6 = 0;
    inum6 = iarr[0][1] + iarr[2][4];
  
    int inum7 = 0;
    inum7 = --inum6;
  
    int inum8 = 0;
    inum8 = inum6++;
    
    System.out.println(inum8);
  }
}

/*

3 6 9 12 15 
18 21 24 27 30 
33 36 39 42 45 
50

*/
