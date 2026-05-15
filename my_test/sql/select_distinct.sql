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

select distinct groo_part
from groomi;
