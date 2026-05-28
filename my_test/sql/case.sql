create table users(
  user_id varchar(50) primary key,
  total_amount integer
);

insert into users
values
("김구름", 100000),
("김구우름", 50000),
("김구우우우름룸", 30000);


SELECT 
    user_id,
    total_amount,
    CASE 
        WHEN total_amount >= 100000 THEN 'VIP'
        WHEN total_amount >= 50000 THEN '우수고객'
        ELSE '일반고객'
    END AS customer_grade
FROM users;
/*
출력값
+-----------------------+--------------+----------------+
| user_id               | total_amount | customer_grade |
+-----------------------+--------------+----------------+
| 김구름                |       100000 | VIP            |
| 김구우름              |        50000 | 우수고객       |
| 김구우우우름룸        |        30000 | 일반고객       |
+-----------------------+--------------+----------------+
*/

/*
CASE 
    WHEN 조건1 THEN 결과값1
    WHEN 조건2 THEN 결과값2
    ELSE 결과값3
END AS 새로운_컬럼명
*/
