create table numbers (
    num_1 integer,
    num_2 integer,
    num_3 integer,
    num_4 float
);

insert into numbers
values
(1, 2, 3, 3.633),
(-4, 5, 6, 4.356),
(-7, 8, 9, 5.765);



select round(num_4, 1), sqrt(num_3), truncate(num_4, 1)
from numbers;

/*
round(num_4, 1)  sqrt(num_3)   truncate(num_4, 1)
3.6              루트3           3.6 
4.4              루트6           4.3
5.8                3              5.7
*/

/*
RAND([n])
0보다 크거나 같고 1보다 작은 난수(실수) 반환RAND 함수를 실행할 때마다 반환되는 값(난수)은달라지지만, 매개변수 n(생략 가능)을 명시하면여러 번 실행해도 같은 값 반환
RAND() → 0.14949947330122765
ROUND(x, d)
x를 소수점 이하 d 자리까지 반올림
d 생략 시 0을 적용해 정수 반환
d가 음수이면 소수점 기준 왼쪽(정수 부분)으로기준점 이동
ROUND(2.354,1) → 2.4SIGN() 매개변수가 0보다 크면 1, 0이면 0, 0보다 작으면-1 SIGN(-5) → -1SQRT() 제곱근 SQRT(3) → 1.7320508075688772
TRUNCATE(x, d
) x를 소수점 이하 d 자리에서 잘라냄 TRUNCATE(2.354,1) →2.3
*/
