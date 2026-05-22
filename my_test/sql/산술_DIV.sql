create table plus_minus (
    int_type integer,
    int_type2 integer,
    int_type3 integer
);

insert into plus_minus
values
(1, 2, 3),
(4, 5, 6),
(7, 8, 9);

select int_type + 3 - 2, int_type2 * 4 / 2, int_type3 MOD 2
from plus_minus;

/*
2  4    1
5  10  0
8  16  1
*/

select int_type DIV 3
from plus_minus;


/*
0
1
2
*/
