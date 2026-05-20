CREATE TABLE city (
  code VARCHAR(50),
  grade Integer,
  ciname Varchar(50)
);

Insert Into city
values
("KOREA", 10, "Gwangju"),
("KOREA", 4, "Busan"),
("KOREA", 5, "Daegu"),
("KOREA", 3, "Ulsan"),
("KOREA", 9, "Seoul"),
("ENGLAND", 6, "First"),
("ENGLAND", 4, "Second"),
("ENGLAND", 3, "Third"),
("ENGLAND", 7, "Forth"),
("ENGLAND", 8, "Fifth"),
("SPACE", 6, "One"),
("SPACE", 4, "TWo"),
("SPACE", 7, "Three"),
("SPACE", 8, "Four"),
("SPACE", 9, "Five");

Select code, Sum(grade), Avg(grade), Max(grade), Min(grade)
From city
Group By code;
