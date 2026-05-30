create table groom1
(
  one integer,
  two varchar(50)
);

insert into groom1
values
(1, "김구름"),
(2, "구름"),
(3, "groom");

create table groom2
(
  one integer,
  two varchar(50)
);

insert into groom2
values
(1, "김구름"),
(2, "구름이이"),
(3, "groommm");

select groom1.one, groom1.two, groom2.two
from groom1
join groom2
on groom1.one = groom2.one;

/*
출력값
+------+-----------+--------------+
| one  | two       | two          |
+------+-----------+--------------+
|    1 | 김구름    | 김구름       |
|    2 | 구름      | 구름이이     |
|    3 | groom     | groommm      |
+------+-----------+--------------+
*/
