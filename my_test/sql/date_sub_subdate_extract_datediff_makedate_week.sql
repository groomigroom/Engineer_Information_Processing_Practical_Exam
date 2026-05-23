create table groomi
(
    chacha varchar(50),
    chacha2 varchar(50),
    chacha3 varchar(50),
    chadate date
);

insert into groomi
values
("groom", "oogroomoo", "groom", "2017-01-09"),
("grooom", "oogroooomooo", "grooom", "2022-01-01"),
("gruoom", "oogruuumoo", "gruuum", "2020-01-07");

select date_sub(chadate, INTERVAL 10 day), subdate(chadate, INTERVAL 20 day), subdate(chadate, 5), extract(year_month from chadate), 
datediff(chadate, '2021-01-01'), makedate(year(chadate), 41), week(chadate, 1)
from groomi;




/*

date_sub(chadate, 10 day) ==> 2016-12-30, 2021-12-22, 2019-01-28
subdate(chadate, 20 day) ==> 2016-12-20, 2021-12-12, 2019-01-18
subdate(chadate, 5) ==> 2017-01-04, 2021-12-27, 2020-01-02
extract(year_month from chadate) ==> 201701, 202201, 202001
datediff(chadate, '2021-01-01') ==> -1453, 365, -360
makedate(year(chadate), 41) ==> 2017-02-10, 2022-02-10, 2020-02-10
week(chadate, 1) ==> 2, 0, 2


DATE_SUB(date, INTERVAL expr
unit)
SUBDATE(date, INTERVAL expr u
nit)
date에 expr unit을 뺀 날짜 반환DATE_SUB('2021-01-10', INTERVAL 5 DAY) → 2021-01-05
SUBDATE(expr, days) expr에서 days를 뺀 날짜 반환 SUBDATE('2021-01-10', 5)→ 2021-01-05
EXTRACT(unit FROM date) date에서 unit으로 지정된 부분반환
EXTRACT(YEAR_MONTH FROM '2021-01-31') → 202101
DATEDIFF(expr1, expr2) expr1에서 expr2를 뺀 날짜를 일수로 반환
DATEDIFF('2021-01-31','2021-01-21') → 10DATE_FORMAT(date, format) date를 format에 명시된 형태로변환해 반환
DATE_FORMAT('2021-01-31',%y %) → 21/01/31STR_TO_DATE(str, format) str을 format에 맞게 날짜로 변환STR_TO_DATE('21,1,2021',
'%d,%m,%Y') → 2021-01-21
MAKEDATE(year, dayofyear) year에 dayofyear에 해당하는 일수를 더한 날짜 반환
MAKEDATE(2021,100) → 2021-04-10
SYSDATE() 현재 날짜 반환 SYSDATE()→ 2021-01-31 12:39:20
WEEK(date, mode) date가 몇 주차인지 반환 YEARWEEK('2021-10-01') →39

*/
