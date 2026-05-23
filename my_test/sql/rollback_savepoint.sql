create table test_one (
  num1 int,
  num2 int,
  char1 varchar(50),
  char2 varchar(50)
);

insert into test_one
values
(1, 2, "구", "름"),
(2, 3, "groom", "cloud"),
(3, 3, "구구", "름d"),
(2, 4, "cl", "oud");

create table test_two (
  num1 int,
  num2 int,
  char1 varchar(50),
  char2 varchar(50)
);

insert into test_two
select *
from test_one;


select num1 + 20, num2
from test_two;


select num1 + 1, num2
from test_two
order by num1 desc;

start transaction;

insert into test_two
select *
from test_one;

rollback;

select *
from test_two;

savepoint a;

delete from test_one
where num1 >= 1;

rollback to savepoint a;

select *
from test_one;

/*
출력값
+-----------+------+
| num1 + 20 | num2 |
+-----------+------+
|        21 |    2 |
|        22 |    3 |
|        23 |    3 |
|        22 |    4 |
+-----------+------+
+----------+------+
| num1 + 1 | num2 |
+----------+------+
|        4 |    3 |
|        3 |    3 |
|        3 |    4 |
|        2 |    2 |
+----------+------+
+------+------+--------+-------+
| num1 | num2 | char1  | char2 |
+------+------+--------+-------+
|    1 |    2 | 구     | 름    |
|    2 |    3 | groom  | cloud |
|    3 |    3 | 구구   | 름d   |
|    2 |    4 | cl     | oud   |
+------+------+--------+-------+
+------+------+--------+-------+
| num1 | num2 | char1  | char2 |
+------+------+--------+-------+
|    1 |    2 | 구     | 름    |
|    2 |    3 | groom  | cloud |
|    3 |    3 | 구구   | 름d   |
|    2 |    4 | cl     | oud   |
+------+------+--------+-------+
*/
