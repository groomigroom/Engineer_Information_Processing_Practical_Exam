create table groomi
(
    groo1 integer,
    groo2 integer,
    groo3 integer
);

create table groomi2
(
    groo1 integer,
    groo2 integer,
    groo3 integer
);

insert into groomi
values
(1, 4, 5),
(4, 5, 6),
(7, 7, 9);


update groomi
set groo2 = 6
where groo2 = 5;

delete from groomi
where groo2 = 5;

select *
from groomi;



/*
groo1 groo2 groo3
1     4     5
4     6     6
7     7     9
*/
