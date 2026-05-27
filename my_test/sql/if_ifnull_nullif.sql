/*
IF(expr1, expr2, expr3)
- expr1은 조건식, expr1이 참(TRUE)이면 expr2, 그렇지 않으면expr3 반환• IFNULL(expr1, expr2)
- expr1이 NULL이 아니면 expr1, NULL이면 expr2 반환
- 기본으로 expr1 반환, 이 값이 NULL이면 두 번째 매개변수 반환• NULLIF(expr1, expr2)
- expr1과 expr2 값이 같으면 NULL, 같지 않으면 expr1 반환
*/
create table groomi (
    ione integer,
    itwo integer,
    ithree integer,
    ifour integer
);

insert into groomi
values
(1, 2, 1, null),
(2, 3, 4, 9),
(5, 6, 2, null);

select if(ione > (itwo + ithree), 222, 333), ifnull(ifour, ithree), nullif(ione, ithree)
from groomi;
/*
+--------------------------------------+-----------------------+----------------------+
| if(ione > (itwo + ithree), 222, 333) | ifnull(ifour, ithree) | nullif(ione, ithree) |
+--------------------------------------+-----------------------+----------------------+
|                                  333 |                     1 |                 NULL |
|                                  333 |                     9 |                    2 |
|                                  333 |                     2 |                    5 |
+--------------------------------------+-----------------------+----------------------+
*/
