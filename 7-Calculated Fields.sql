SELECT Concat(col_1, '(', col_2, ')') FROM tablename ORDER BY col_1;

SELECT Concat(RTrim(col_2), '(', RTrim(col_3), ')') FROM tablename ORDER BY col_1;

SELECT Concat(RTrim(col_2), '(', RTrim(col_3), ')') AS  col_calculated FROM tablename ORDER BY col_1;

SELECT col_1, col_2, col_3 * col_4 FROM tablename WHERE col_1 = 2001;

SELECT col_1, col_2, col_1 + col_3 FROM tablename WHERE col_1 = 2002;

SELECT col_1, col_2, col_1 / col_3 FROM tablename WHERE col_1 = 2002;

SELECT col_1, col_2, col_1 - col_3 FROM tablename WHERE col_1 = 2002;
