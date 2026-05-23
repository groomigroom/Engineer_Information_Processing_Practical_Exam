create table groomi
(
    chacha varchar(50),
    chacha2 varchar(50),
    chacha3 varchar(50),
    chadate date,
    chatime time,
    chadatime datetime
);

insert into groomi
values
("groom", "oogroomoo", "groom", "2017-01-09", "14:22:30", "2017-01-09 14:22:30"),
("grooom", "oogroooomooo", "grooom", "2022-01-01", "17:30:30", "2022-01-01 17:30:30"),
("gruoom", "oogruuumoo", "gruuum", "2020-01-07", "17:30:30", "2020-01-07 17:30:30");

select year(chadate), weekofyear(chadate), hour(chatime), date(chadatime), time(chadatime),
date_add(chadate, interval 10 day), adddate(chadate, 11)
from groomi;


/*

year(chadate)  weekofyear(chadate)  hour(chatime)  date(chadatime)   time(chadatime)
2017               2                    14              2017-01-09       14:22:30
2022               52                   17           2022-01-01          17:30:30
2020              2                    17            2020-01-07          17:30:30  

date_add(chadate, interval 10 day)    adddate(chadate, 11)
2017-01-19                             2017-01-20 
2022-01-11                             2022-01-12 
2020-01-17                             2020-01-18




YEAR(date) date에서 연 반환 YEAR('2021-01-02') → 2021MONTH(date) date에서 월 반환 MONTH('2021-02-02') → 2QUARTER(date) date의 분기 반환 QUARTER('2021-02-02') → 1WEEKOFYEAR(date) date가 몇 주차인지 반환
(1~53주)
WEEKOFYEAR('2021-02-22') →8
HOUR(time) time에서 시간 반환 HOUR('10:53:24') → 10MINUTE(time) time에서 분 반환 MINUTE('10:53:24') → 53SECOND(time) time에서 초 반환 SECOND('10:53:24') → 24DATE(expr) expr에서 날짜 부분 반환 DATE('2021-01-02 12:32:10') →2021-01-02
TIME(expr) expr에서 시간 부분 반환 TIME('2021-01-02 12:32:10') →12:32:10
DATE_ADD(date, INTERVAL expr
unit)
ADDDATE(date, INTERVAL expr u
nit)
date에 expr unit을 더한 날
짜
반환
DATE_ADD('2021-01-10', INTERVAL 10 DAY) → 2021-01-20ADDDATE(expr, days) expr에 days를 더한 날짜 반
환
ADDDATE('2021-01-10', 10) → 2021-01-20

*/
