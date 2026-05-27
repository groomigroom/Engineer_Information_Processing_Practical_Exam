
/*
CAST
CAST() 함수는 인수로 전달받은 값을 명시된 타입으로 변환하여 반환합니다.
이때 변환하고자 하는 타입을 AS 절을 이용하여 직접 명시할 수 있습니다.
sqlCAST(expr AS type)Copy
AS 절에서 사용할 수 있는 타입은 다음과 같습니다.

BINARY
CHAR
DATE
DATETIME
TIME
DECIMAL
JSON (MySQL 5.7.8부터 제공됨)
NCHAR
SIGNED [INTEGER]
UNSIGNED [INTEGER]
*/

select 4 / cast('2' as unsigned)

/*
+---------------------------+
| 4 / cast('2' as unsigned) |
+---------------------------+
|                    2.0000 |
+---------------------------+
*/
