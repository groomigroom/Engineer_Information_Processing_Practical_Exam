create table groomgroom
(
  ddate date
);

insert into groomgroom
values
("2022-02-02"),
("2023-02-02"),
("2025-07-02"),
("2026-08-02");

select *
from groomgroom
where ddate between "2023-01-01" and "2025-12-31";

/*
출력값

+------------+
| ddate      |
+------------+
| 2023-02-02 |
| 2025-07-02 |
+------------+

*/
