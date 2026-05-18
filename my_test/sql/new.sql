create table test_part
(
	one_part int not null,
    two_part varchar(50) not null,
    three_part int null,
    four_part varchar(50) null
);

insert into test_part
values
(1, "이름1", 2, "코드1");

select *
from test_part;

rollback;
