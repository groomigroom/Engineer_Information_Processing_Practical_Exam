create table groomi
(
    groom1 varchar(50),
    groom2 varchar(50),
    groom3 varchar(50),
    groom4 varchar(50),
    groom5 float
);


insert into groomi
values
("김구름", "멍멍", "구름구름", "구우름", 123454.33344),
("groom", "mung", "구름구름이", "구름", 3434.556664),
("gugu", "mong", "구름구름이이", "구우우름", 55434.556664);

select char_length(groom1), length(groom1), concat(groom1, groom2), concat_ws("groom", groom1, groom2), format(groom5, 3), instr(groom1, "구"), locate("름", groom3, 4), position("름" in groom3), locate("름", groom4) 
from groomi;

/*
char_length(groom1) | length(groom1) | concat(groom1, groom2) | concat_ws("groom", groom1, groom2) | 
3                            | 9                     | 김구름멍멍                    | 김구름groom멍멍                            |
5                            | 5                     | groommung                  | groomgroommung                          |
4                            | 4                     | gugumong                    | gugugroommong                            |
-- 문자열 개수 반환    바이트 수 반환
*/


-- format(groom5, 3) | instr(groom1, "구") | locate("름", groom3, 4) | position("름" in groom3) | 
-- 123,454.333          | 2                         | 4                               | 2                                |
-- 3,434.557             | 0            | 4                               | 2                                |
-- 55,434.557            | 0                     | 4                              | 2                                |


/*
locate("름", groom4) |          position("름" in groom3)
3                           |        3
2                           |       2
4                           |           4



INSTR(str, substr) str 문자열에서 substr 문자(열)를 찾아시작 위치 반환 INSTR('ABC', 'C') → 3LOCATE(substr, str, pos)
POSITION(substr IN str)
str 문자열에서 substr 문자(열)를 찾아시작 위치 반환, pos 입력 시 해당 위치부터 검색
LOCATE('C', 'ABCDEFG') → 3
*/
