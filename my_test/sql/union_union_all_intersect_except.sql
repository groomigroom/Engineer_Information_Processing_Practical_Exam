create table num1 (
  num11 integer,
  num12 integer
);

create table num2 (
  num11 integer,
  num12 integer
);

insert into num1
values
(1, 2),
(1, 3),
(2, 5);

insert into num2
values
(1, 2),
(2, 3),
(3, 6);

select *
from num1
union
select *
from num2;

select *
from num1
union all
select *
from num2;

select *
from num1
intersect
select *
from num2;

select *
from num1
except
select *
from num2;

/*
출력값

+-------+-------+
| num11 | num12 |
+-------+-------+
|     1 |     2 |
|     1 |     3 |
|     2 |     5 |
|     2 |     3 |
|     3 |     6 |
+-------+-------+
+-------+-------+
| num11 | num12 |
+-------+-------+
|     1 |     2 |
|     1 |     3 |
|     2 |     5 |
|     1 |     2 |
|     2 |     3 |
|     3 |     6 |
+-------+-------+
+-------+-------+
| num11 | num12 |
+-------+-------+
|     1 |     2 |
+-------+-------+
+-------+-------+
| num11 | num12 |
+-------+-------+
|     1 |     3 |
|     2 |     5 |
+-------+-------+

*/
