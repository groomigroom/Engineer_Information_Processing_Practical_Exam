/*
CONVERT
CONVERT() 함수도 CAST() 함수처럼 인수로 전달받은 값을 명시된 타입으로 변환하여 반환합니다.
CONVERT() 함수는 두 번째 인수로 변환하고자 하는 타입을 직접 전달할 수 있습니다.
sqlCONVERT(expr, type) == CAST(expr as type)
CONVERT(expr USING transcoding_name)Copy
USING 절은 서로 다른 문자셋(character set) 간의 데이터 변환을 위해 사용됩니다.
이때 사용할 수 있는 타입은 CAST() 함수와 같습니다.
SELECT CONVERT('abc' USING utf8);
*/

select convert('12', signed);

/*
+-----------------------+
| convert('12', signed) |
+-----------------------+
|                    12 |
+-----------------------+
*/
