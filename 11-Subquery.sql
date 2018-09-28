SELECT col_num FROM tablename_1 WHERE col_value = 'Something';

SELECT col_count FROM tablename_2 WHERE col_value IN ( SELECT col_num FROM tablename_1 WHERE col_value = 'Something');

SELECT col_id, (SELECT COUNT(*) FROM tablename_2 WHERE tablename_2.col_id = tablename_1.col_id) AS orders FROM FROM tablename_1;
