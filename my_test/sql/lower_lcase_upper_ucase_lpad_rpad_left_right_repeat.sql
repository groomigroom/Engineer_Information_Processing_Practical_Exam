create table groomi
(
    chacha varchar(50),
    chacha2 varchar(50)
);

insert into groomi
values
("GROOMI", "groomi"),
("GRULD", "clude");


select lower(chacha), lcase(chacha), upper(chacha2), ucase(chacha2), lpad(chacha, 8, "구"), rpad(chacha2, 10, "름"), left(chacha, 3), right(chacha2, 4), repeat(chacha, 3)
from groomi;

/*
-- lower(chacha) | lcase(chacha) | upper(chacha2) | ucase(chacha2) | lpad(chacha, 8, "구") | 
groomi          | groomi          | GROOMI          | GROOMI         | 구구GROOMI          |
gruld             | gruld            | CRULD             | CRULD           | 구구구GRULD          |

rpad(chacha2, 10, "름") | left(chacha, 3) | right(chacha2, 4) | repeat(chacha, 3)               |
groomi름름름름           | GRO             | oomi                 | GROOMIGROOMIGROOMI |
clude름름름름름          | GRU              | lude                  | GRULDGRULDGRULD         |


LTRIM(str) str 문자열에서 왼쪽 공백 제거 LTRIM(' ABC ') → 'ABC' RTRIM(str) str 문자열에서 오른쪽 공백 제거 RTRIM(' ABC ') → ' ABC'
LEFT(str, len) str 문자열을 len 길이만큼 왼쪽에서 잘라 반환LEFT('ABCDE', 2) → 'AB'
RIGHT(str, len) str 문자열에서 len 길이만큼 오른쪽에서 잘라 반환
RIGHT('ABCDE', 2) → '
DE'
REPEAT(str, count) str 문자열을 count만큼 반복 REPEAT('Ya', 3) → 'YaYaYa'
*/
