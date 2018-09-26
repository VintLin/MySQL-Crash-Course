SELECT col_1, col_2 FROM tablename WHERE col_1 = 102 AND col_3 <= 10;

SELECT col_1, col_2 FROM tablename WHERE col_1 = 102 OR col_1 = 101;

SELECT col_1, col_2 FROM tablename WHERE col_1 = 102 OR col_1 = 101 AND col_3 >= 10;

SELECT col_1, col_2 FROM tablename WHERE (col_1 = 102 OR col_1 = 101) AND col_3 >= 10;

SELECT col_1, col_2 FROM tablename WHERE col_1 IN (1002, 1003) ORDER BY col_1;

SELECT col_1, col_2 FROM tablename WHERE col_1 = 1002 OR col_1 = 1003 ORDER BY col_1;

SELECT col_1, col_2 FROM tablename WHERE col_1 NOT IN (1002, 1003) ORDER BY col_1;

 
