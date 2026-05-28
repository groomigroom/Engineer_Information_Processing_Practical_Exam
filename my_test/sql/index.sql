create table groomi (
  part1 integer,
  part2 integer,
  part3 date,
  part4 varchar(50)
);

insert into groomi
values
(1, 2, "2000-02-02", "김구름"),
(4, 3, "2000-02-06", "김구구"),
(5, 7, "2011-11-06", "구구");

create index index_one on groomi (part1);

show index from groomi;



/*
고유 인덱스 생성
CREATE UNIQUE INDEX 인덱스명 ON 테이블명 (컬럼명);
•UNIQUE
- 사용된 경우 : 중복 값이 없는 속성으로 인덱스를
생성함
- 생략된 경우 : 중복 값을 허용하는 속성으로 인덱
스를 생성함
*/

create unique index index_two on groomi (part1);

show index from groomi;

/*
출력값
+--------+------------+-----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| Table  | Non_unique | Key_name  | Seq_in_index | Column_name | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment | Visible | Expression |
+--------+------------+-----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| groomi |          1 | index_one |            1 | part1       | A         |           3 |     NULL |   NULL | YES  | BTREE      |         |               | YES     | NULL       |
+--------+------------+-----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
+--------+------------+-----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| Table  | Non_unique | Key_name  | Seq_in_index | Column_name | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment | Visible | Expression |
+--------+------------+-----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| groomi |          0 | index_two |            1 | part1       | A         |           3 |     NULL |   NULL | YES  | BTREE      |         |               | YES     | NULL       |
| groomi |          1 | index_one |            1 | part1       | A         |           3 |     NULL |   NULL | YES  | BTREE      |         |               | YES     | NULL       |
+--------+------------+-----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
*/

/*
인덱스 삭제
ALTER TABLE 테이블명 DROP INDEX 인덱스명;
*/
