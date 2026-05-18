create table groom (
  col1 integer,
  col2 varchar(50)
);

insert into groom
values
(1, "구름"),
(2, "김구름"),
(3, "김구구름"),
(4, "김름름"),
(6, "김구구름름");

create table groom2 (
  col1 integer,
  col2 varchar(50)
);

insert into groom2
values
(1, "groom"),
(2, "kimgroom"),
(3, "kimgoogooroom"),
(4, "kimgromroom"),
(5, "gugu");

select groom.col1, groom2.col1, groom.col2, groom2.col2
from groom
left join groom2
-- left outer join groom2도 가능함.
on groom.col1 = groom2.col1;

select groom.col1, groom2.col1, groom.col2, groom2.col2
from groom
right outer join groom2
on groom.col1 = groom2.col1;

create table groom3 (
  col1 integer,
  col3 varchar(50)
);

insert into groom3
values
(1, "groom"),
(2, "kimgroom"),
(3, "kimgoogooroom"),
(4, "kimgromroom"),
(5, "gugu");


select groom.col1, groom.col2, groom3.col3
from groom
natural join groom3;
