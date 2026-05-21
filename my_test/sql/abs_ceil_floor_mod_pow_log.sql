create table numbers (
    num_1 integer,
    num_2 integer,
    num_3 integer,
    num_4 float
-- decimal을 추천한다고 함. decimal(총 자릿수, 소수점 자릿수) 형태로
);

insert into numbers
values
(1, 2, 3, 3.6),
(-4, 5, 6, 4.3),
(-7, 8, 9, 5.7);

select abs(num_1), ceil(num_4), floor(num_4), mod(20, num_1), pow(num_1, num_2)
from numbers;

/*
abs(num_1) | ceil(num_4) | floor(num_4) | mod(20, num_1) | pow(num_1, num_2) |
1               | 4               | 3                 | 0                     | 1                           |
4               | 5               | 4                 | 0                     | -1024                      |
7               | 6               | 5                 | 6                     | 5764801                 |
                 -- 최소 정수
*/

select log(3, num_3)
from numbers
where num_3 = 9;
/*
log(3, num_3)
2
*/
