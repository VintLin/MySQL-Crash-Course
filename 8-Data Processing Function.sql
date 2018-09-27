SELECT col_1, Upper(col_2) AS col_upcase FROM tablename ORDER BY col_1;

SELECT col_1, col_2 FROM tablename WHERE Soundex(col_1) = Soundex("Y Lie");

SELECT col_1, col_2 FROM tablename WHERE col_date = '2005-09-01';

SELECT col_1, col_2 FROM tablename WHERE Date(col_date) = '2005-09-01';

SELECT col_1, col_2 FROM tablename WHERE Time(col_date) = '09:20:00';

SELECT col_1, col_2 FROM tablename WHERE Date(col_date) BETWEEN '2005-09-01' AND '2005-09-02';

SELECT col_1, col_2 FROM tablename WHERE Year(col_date) = 2005 AND Month(col_date) = 9;
/*
--------------------------------日期时间处理函数--------------------------------
AddDate(Date)           增加一个日期
AddTime(Time)           增加一个时间

CurDate()               返回当前日期
CurTime()               返回当前时间
Now()                   返回当前日期时间

Date_Add()              高度灵活的日期运算函数
Date_Format()           返回格式化的日期或时间串

DateDiff(Date_1, Date_2)计算两个日期之差
DayOfWeek(Date)         对于一个日期,返回对应的星期几

Hour(Time)              返回一个时间的小时部分
Minute(Time)            返回一个时间的分钟部分
Second(Time)            返回一个时间的秒部分

Year(Date)              返回一个日期的年份部分
Month(Date)             返回一个日期的月份部分
Day(Date)               返回一个日期的天数部分


Date(DateTime)          返回日期时间的日期部分
Time(DateTime)          返回日期时间的时间部分

-------------------------------数值处理函数-------------------------------------

Abs()                   返回一个数的绝对值
Exp()                   返回一个数的指数值
Mod()                   返回除操作的余数
Pi()                    返回圆周率
Rand()                  返回一个随机数
Sqrt()                  返回一个数的平方根
Sin()                   返回一个角度的正弦
Cos()                   返回一个角度的余弦
Tan()                   返回一个角度的正切
*/
