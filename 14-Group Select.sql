--组合查询
--1
SELECT col_1, col_2, col_3
FROM tablename
WHERE col_1 >= 5;

--2
SELECT col_1, col_2, col_3
FROM tablename
WHERE col_2 IN (1002, 3002);

--Group Select
SELECT col_1, col_2, col_3
FROM tablename
WHERE col_1 >= 5
UNION
SELECT col_1, col_2, col_3
FROM tablename
WHERE col_2 IN (1002, 3002);

-- Or Select
SELECT col, col_2, col_3
FROM tablename
WHERE col_1 >= 5 OR col_2 IN(1002, 3002);
/*
1.必须有两个及以上的SELECT语句组成， 语句之间用关键字UNION分隔。
2.UNION 中每个查询必须包含相同的列、表达式或聚集函数。
3.列数据类型必须兼容,类型可以不必相同,但必须是DBMS可以隐式转换的类型。
*/

-- UNION 查询语句自动隐藏重复行。
-- 可以使用 UNION ALL 避免该情况。
SELECT col_1, col_2, col_3
FROM tablename
WHERE col_1 >= 5
UNION ALL
SELECT col_1, col_2, col_3
FROM tablename
WHERE col_2 IN (1002, 3002);

-- 对组合查询排序
SELECT col_1, col_2, col_3
FROM tablename
WHERE col_1 >= 5
UNION ALL
SELECT col_1, col_2, col_3
FROM tablename
WHERE col_2 IN (1002, 3002)
GROUP BY col_1, col_2;
-- GROUP BY 将为前面的查询语句排序
