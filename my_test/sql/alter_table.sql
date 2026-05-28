create table groomi
(
  num1 integer,
  num2 integer,
  num3 integer
);

alter table groomi
add num4 integer,
drop column num3;

desc groomi;

/*
출력값

+-------+------+------+-----+---------+-------+
| Field | Type | Null | Key | Default | Extra |
+-------+------+------+-----+---------+-------+
| num1  | int  | YES  |     | NULL    |       |
| num2  | int  | YES  |     | NULL    |       |
| num4  | int  | YES  |     | NULL    |       |
+-------+------+------+-----+---------+-------+
*/
