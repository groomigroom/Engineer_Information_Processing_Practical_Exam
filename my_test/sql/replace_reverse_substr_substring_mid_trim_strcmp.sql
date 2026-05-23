create table groomi
(
    chacha varchar(50),
    chacha2 varchar(50),
    chacha3 varchar(50)
);

insert into groomi
values
("groom", "oogroomoo", "groom"),
("grooom", "oogroooomooo", "grooom"),
("gruoom", "oogruuumoo", "gruuum");

select replace(chacha, "o", "e"), reverse(chacha), substr(chacha, 3, 3), 
substring(chacha, 2, 2), mid(chacha, 3, 3), trim(leading 'o' from chacha2), 
trim(trailing 'o' from chacha2), trim(both 'o' from chacha2), strcmp(chacha, chacha3)
from groomi;

/*
replace(chacha, "o", "e") | reverse(chacha) | substr(chacha, 3, 3)  substring(chacha, 2, 2)  mid(chacha, 3, 3)   trim(leading 'o' from chacha2)
greem                         | moorg             | oom             ro                        oom                  groomoo
greeem                        | mooorg           | ooo             ro                        ooo                   groooomooo
grueem                        | moourg           | uoo             ru                        uoo                   gruuumoo
                                                            -- SUBSTR(str, pos, len) SUBSTRING(str, pos, len)
trim(trailing 'o' from chacha2)      trim(both 'o' from chacha2)       strcmp(chacha, chacha3)                                                      
oogroom                                   groom                          0
oogroooom                                  groooom                      0
oogruuum                                 gruuum                           -1

SPACE(N) N개의 공백 문자 반환 SPACE(3) → ' '
SUBSTR(str, pos, len)

MID(str, pos, len)
str 문자열의 pos 위치에서 len 길이만큼 문자를 잘라서 반환
SUBSTR('ABCD', 3, 1)→ 'C'
TRIM([{BOTH|LEADING|T
RAILING} [remstr] FROM]
str)
str 문자열에서 remstr 문자를 앞(LEADIN
G)이나 뒤(TRAILING) 또는 앞뒤(BOTH)
에서 제거
TRIM(LEADING 'x' FROM 'xxSQLxx') → 'SQLxx'
STRCMP (str1, str2) str1과 str2 문자열을 비교해 같으면0, str
1이 str2보다 크면 1, 작으면 -1을 반환STRCMP('A', 'B') → -1

*/
