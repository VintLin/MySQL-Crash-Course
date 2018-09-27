/*
 Aggregate Function
 AVG()              返回某列的平均值
 COUNT()            返回某列的行数
 MAX()              返回某列的最大值
 MIN()              返回某列的最小值
 SUM()              返回某列值之和
*/

SELECT AVG(col_value) AS avg_value FROM tablename;

SELECT AVG(col_value) AS avg_value FROM tablename WHERE  col_id = 1003;

SELECT COUNT(*) AS count_col FROM tablename;
--输出表中的总行数， 即使行中有值为NULL
SELECT COUNT(col_value) AS count_col_value FROM  tablename;
--输出表中的特定列的总行数，当该行中其值为NULL时忽略
SELECT MAX(col_value) AS max_value FROM tablename;

SELECT MIN(col_value) AS min_value FROM tablename;

SELECT SUM(col_value) AS all_value FROM tablename;

SELECT AVG(DISTINCT col_value) AS avg_diff_value FROM tablename;
--去除该列中相同的值并取其平均数
SELECT COUNT(*) AS num_items
       MIN(col_value) AS min_value
       MAX(col_value) AS max_value
       AVG(col_value) AS avg_value
FROM tablename;
