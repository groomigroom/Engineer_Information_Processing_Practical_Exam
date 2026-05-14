#include <stdio.h>
int main()
{
  int inum1, inum2, inum3, inum4, inum5 = 0;
  int iarr[3][5];
  for (inum1 = 0; inum1 < 3; inum1++){
    //inum1이 0, 1, 2로 순차적으로 증가함.
    for (inum2 = 0; inum2 < 5; inum2++){
      //inum2가 0, 1, 2, 3, 4로 순차적으로 증가함.
      inum3 += 3;
      //inum3가 3, 6, 9, 12, 15, 18, 21, 24, 27, 30, 33, 36, 39, 42, 45
      iarr[inum1][inum2] = inum3;
      /*
      3 6 9 12 15 
      18 21 24 27 30 
      33 36 39 42 45 
      이런식으로 배열이 생성됩니다.
      */
    }
  }
  
  for (inum4 = 0; inum4 < 3; inum4++) {
    for (inum5 = 0; inum5 < 5; inum5++) {
      printf("%d ", iarr[inum4][inum5]);
    }
    printf("\n");
  }
  /*
  3 6 9 12 15 
  18 21 24 27 30 
  33 36 39 42 45 
  이런식으로 배열이 출력됩니다.
  */
  
  int inum6 = 0;
  //inum6 == 0
  inum6 = iarr[0][1] + iarr[2][4];
  
  /*
  iarr[0][1] == 6
  iarr[2][4] == 45
  -> inum6 == 6 + 45 == 51
  */
  int inum7 = 0;
  //inum7 == 0
  inum7 = --inum6;
  
  /*
  inum6 = inum6 - 1
  -> inum6 == 50
  inum7 == 50
  */
  int inum8 = 0;
  //inum8 == 0
  inum8 = inum6++;
  /*
  ->inum8 == 50
  
  inum6 = 50 + 1 == 51
  
  */
  printf("%d", inum8);
  
  //inum8 == 50
}
