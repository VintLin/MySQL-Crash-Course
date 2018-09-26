SELECT col_2 FROM tablename WHERE col_2 REGEXP 'string' ORDER BY col_2;

SELECT col_2 FROM tablename WHERE col_2 REGEXP '.tring' ORDER BY col_2;

SELECT col_2 FROM tablename WHERE col_2 REGEXP BINARY 'String' ORDER BY col_2;

SELECT col_2 FROM tablename WHERE col_2 REGEXP '1000 | 2000 | 3000' ORDER BY col_2;

SELECT col_2 FROM tablename WHERE col_2 REGEXP 'NO.[1234]' ORDER BY col_2;

SELECT col_2 FROM tablename WHERE col_2 REGEXP 'NO.[1-9]' ORDER BY col_2;

SELECT col_2 FROM tablename WHERE col_2 REGEXP '\\.\\-' ORDER BY col_2;

SELECT col_2 FROM tablename WHERE col_2 REGEXP 'trees?' ORDER BY col_2;

SELECT col_2 FROM tablename WHERE col_2 REGEXP '^begin' ORDER BY col_2;

SELECT col_2 FROM tablename WHERE col_2 REGEXP 'end$' ORDER BY col_2;
