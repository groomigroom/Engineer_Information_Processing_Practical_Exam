create table groomi
(
  groo_id integer,
  groo_name varchar(50),
  groo_part varchar(50),
  groo_id_two integer
);

desc groomi;

insert into groomi
values
(1, "구름이", "1부", 2),
(2, "구미", "2부", 3),
(3, "구구미", "3부", 4),
(4, "구우", "2부", 5);

select groo_part, sum(groo_id_two) id_two_hap, grouping(groo_part)
from groomi
group by groo_part with rollup;
-- with rollup으로 총계도 구하는거
-- grouping() 함수로 총계는 1로 보여지게 하는거 

select groo_part, sum(groo_id_two) id_two_hap, grouping(groo_part)
from groomi
group by groo_part with rollup
having id_two_hap >= 5;
-- having은 group by에서 where 느낌으로 쓰는 거.
