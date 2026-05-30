create table groomgroom (
  oneis integer,
  twois varchar(50)
);

insert into groomgroom 
values
(1, "구름이"),
(2, "구르미"),
(4, "구우름");

create table groomgroom2 (
  oneis integer,
  twois varchar(50)
);

insert into groomgroom2 
values
(1, "집"),
(2, "장난감"),
(5, "잠자기");

select groomgroom.oneis, groomgroom.twois, groomgroom2.twois
from groomgroom
left join groomgroom2
on groomgroom.oneis = groomgroom2.oneis;

select groomgroom2.oneis, groomgroom.twois, groomgroom2.twois
from groomgroom
right outer join groomgroom2
on groomgroom.oneis = groomgroom2.oneis;

create table groomgroom3 (
  oneis integer,
  twois varchar(50)
);

insert into groomgroom3 
values
(1, "김구름이"),
(2, "구르미"),
(4, "구우름"),
(5, "잠자기");

select groomgroom.oneis, groomgroom.twois, groomgroom3.twois
from groomgroom
natural join groomgroom3;
/*
출력값

+-------+-----------+-----------+
| oneis | twois     | twois     |
+-------+-----------+-----------+
|     1 | 구름이    | 집        |
|     2 | 구르미    | 장난감    |
|     4 | 구우름    | NULL      |
+-------+-----------+-----------+
+-------+-----------+-----------+
| oneis | twois     | twois     |
+-------+-----------+-----------+
|     1 | 구름이    | 집        |
|     2 | 구르미    | 장난감    |
|     5 | NULL      | 잠자기    |
+-------+-----------+-----------+
+-------+-----------+-----------+
| oneis | twois     | twois     |
+-------+-----------+-----------+
|     2 | 구르미    | 구르미    |
|     4 | 구우름    | 구우름    |
+-------+-----------+-----------+
*/
