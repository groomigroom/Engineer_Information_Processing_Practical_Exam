create table kimgroom (
  innum integer primary key,
  iname varchar(50),
  innum2 integer
);

alter table kimgroom
drop primary key, add primary key (iname);

alter table kimgroom
add igrade integer;


desc kimgroom;
/*
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| innum  | int         | NO   |     | NULL    |       |
| iname  | varchar(50) | NO   | PRI | NULL    |       |
| innum2 | int         | YES  |     | NULL    |       |
| igrade | int         | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
*/
/*
제시해주신 MySQL 문법이 틀린 이유는 MySQL에서 ALTER TABLE ... ALTER COLUMN 구문은 컬럼의 '기본값(DEFAULT)'을 변경할 때만 사용하기 때문입니다.컬럼의 NOT NULL 제약조건을 추가하거나 수정하려면 CHANGE 또는 MODIFY를 사용해야 합니다.올바른 수정 방법은 다음과 같습니다.1. MODIFY 사용 (추천)컬럼명이나 데이터 타입을 변경하지 않고 제약조건만 수정할 때 가장 직관적인 방법입니다.sqlALTER TABLE kimgroom MODIFY igrade INT NOT NULL;
코드를 사용할 때는 주의가 필요합니다.(참고: INT 부분에는 원래 igrade 컬럼에 설정된 정확한 데이터 타입을 적어주셔야 합니다.)2. CHANGE 사용컬럼의 이름(기존 컬럼명을 유지하려면 동일하게 작성)과 데이터 타입, 제약조건을 한 번에 변경할 때 사용합니다.sqlALTER TABLE kimgroom CHANGE igrade igrade INT NOT NULL;
코드를 사용할 때는 주의가 필요합니다.자세한 문법 구조는 MySQL 공식 문서를 참고하시면 더욱 다양한 예제를 확인하실 수 있습니다.

1. MODIFY 사용 (추천)컬럼명은 그대로 두고 데이터 타입과 속성만 변경할 때 사용합니다.sqlALTER TABLE kimgroom MODIFY iname VARCHAR(30) NOT NULL;
코드를 사용할 때는 주의가 필요합니다.2. CHANGE 사용컬럼명 자체를 바꾸거나(새로운 컬럼명 추가), 데이터 타입/속성을 함께 변경할 때 사용합니다.sqlALTER TABLE kimgroom CHANGE iname iname VARCHAR(30) NOT NULL;
코드를 사용할 때는 주의가 필요합니다.더 자세한 컬럼 수정 문법은 MySQL 공식 문서를 참고해 주세요.
*/
