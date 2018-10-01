--INSERT
/*
1.插入完整行
2.插入行的一部分
3.插入多行
4.插入某些查询结果
*/
INSERT INTO customers
VALUES (
  NULL,
  'Pep E. LaPaw',
  '100 Main Street',
  '32',
  'male'
);

--更安全的方式
INSERT INTO customers(
  name,
  city,
  old,
  sex
)
VALUES(
  'Pep E. LaPaw',
  '100 Main Street',
  '32',
  'male'
)

--为了防止INSERT占用与数据库的链接
INSERT LOW_PRIORITY INTO
--指示MySQL降低MySQL的优先级

--插入多行
INSERT INTO customers(
  name,
  city,
  old,
  sex
)
VALUES(
  'Pep E. LaPaw',
  '100 Main Street',
  '32',
  'male'
),
(
  'M. MArtian',
  '42 Galaxy Way',
  '43',
  'female'
);

--插入检索出的数据
INSERT INTO customers(
  name,
  city,
  old,
  sex
)
SELECT
  name,
  city,
  old,
  sex
FROM custnew;
