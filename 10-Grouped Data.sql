SELECT col_id, COUNT(*) AS num_items FROM tablename WHERE col_value = "LOGO" GROUP BY col_id ORDER BY num_items;

SELECT col_id, COUNT(*) AS num_items FROM tablename GROUP BY col_id HAVING COUNT(*) >= 2;

SELECT col_id, COUNT(*) AS num_items FROM tablename WHERE col_id >=10 GROUP BY col_id HAVING COUNT(*) >= 2;

/*
 SELECT 子句顺序
 子  句              说  明                 是否必须使用
 SELECT         返回的列或表达式             是
 FROM           从中检索数据的表             仅在从表选择数据时使用
 WHERE          行级过滤                    否
 GROUP BY       分组说明                    仅在按组计算聚集时使用
 HAVING         组级过滤                    否
 ORDER BY       输出排序顺序                否
 LIMIT          检索的行数                  否
*/
