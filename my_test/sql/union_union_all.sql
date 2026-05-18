create table groom1 (
  col1 integer,
  col2 varchar(50)
);

insert into groom1
values
(1, "구름"),
(2, "멍멍");

create table groom2 (
  col1 integer,
  col2 varchar(50)
);

insert into groom2
values
(1, "구롬"),
(2, "멍멍");

select *
from groom1
union -- 여기에 distinct는 생략 가능함
select *
from groom2;

select *
from groom1
union all
select *
from groom2;
