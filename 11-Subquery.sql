SELECT col_num FROM tablename_1 WHERE col_value = 'Something';

SELECT col_count FROM tablename_2 WHERE col_value IN ( SELECT col_num FROM tablename_1 WHERE col_value = 'Something');

 
