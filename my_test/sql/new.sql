create table test_part
(
	one_part int not null,
    two_part varchar(50) not null,
    three_part int null,
    four_part varchar(50) null
);

insert into test_part
values
(1, "이름1", 2, "코드1"),
(2, "이름2", 4, "코드2"),
(3, "이름3", 6, "코드3"),
(4, "이름4", 8, "코드4"),
(5, "이름5", 10, "코드5"),
(6, "이름6", 12, "코드6"),
(7, "이름7", 14, "코드7"),
(8, "이름8", 14, "코드7"),
;

select *
from test_part;

rollback;
