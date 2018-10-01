/*
MySQL 支持几种基本的数据库引擎
并非所有引擎都支持全文本搜索
MyISAM 支持 InnoDB 不支持

其他搜索模式(LIKE、Regular)的限制:
 性能
 明确控制
 智能化结果
*/


--启用全文本支持
CREATE TABLE products
{
  note_id   int      NOT NULL AUTO_INCREMENT,
  prod_id   char(10) NOT NULL,
  note_text text     NULL,
  PRIMARY KEY(note_id),
  FULLTEXT(note_text)
}ENGINE=MyISAM;

--进行全文本搜索
SELECT note_text
FROM products
WHERE Match(note_text) Against('rabbit');
-- Match(note_text) Against('rabbit') 将根据文本与字段的匹配度计算出等级值。

--使用LIKE
SELECT note_text
FROM products
WHERE note_text LIKE '%rabbit%';


--使用全文本搜索 搜索相关数据
SELECT note_text
FROM products
WHERE Match(note_text) Against('anvils' WITH QUERY EXPANSION);
/*
1.根据字段匹配文本。
2.检测匹配文本中有效词。
3.根据有效再进行搜索。
*/

--全文本布尔搜索
SELECT note_text
FROM products
WHERE Match(note_text) Against('anvils -rope*'IN BOOLEAN MODE);
--搜索包含anvils 不包含rope开头的文本
/*
+   包含
-   排除
>   包含 增加等级值
<   包含 减少等级值
()  把词组成子表达式
~   取消一个词的排序值
*   词尾通配符
""  定义一个短句
*/
