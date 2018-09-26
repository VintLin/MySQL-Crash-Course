USE database;

SHOW DATABASES;

SHOW TABLES;

SHOW COLUMNS FROM tablename;

SELECT col_1 FROM tablename;

SELECT col_1, col_2 FROM tablename;

SELECT * FROM tablename;

SELECT DISTINCT col_1 FROM tablename;

SELECT col_1 FROM tablename LIMIT 5;

SELECT col_1 FROM tablename LIMIT 5,5;

SELECT tablename.col_1 FROM tablename;

SELECT tablename.col_1 FROM database.tablename;
