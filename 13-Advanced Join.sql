SELECT cust_name, cust_contact
FROM customers AS c, orders AS o, orderitems AS oi
WHERE  c.cust_id = o.cust_id
  AND oi.order_num = o.order_num
  AND prod_id = 'TNT2';

SELECT prod_id, prod_name
FROM products
WHERE vend_id = (SELECT vend_id
                 FROM products
                 WHERE prod_id = 'DTNTR');


SELECT p1.prod_id, p1.prod_name
FROM products AS p1, products AS p2
WHERE p1.vend_id = p2.vend_id
  AND p2.prod_id = 'DTNTR';

SELECT c.*, o.order_num, o.order_date,
       oi.prod_id, oi.quantity, oi.item_price
FROM customers AS c, orders AS o, orderitems AS oi
 AND oi.order_num = o.order_num
 AND prod_id = 'FB';

 SELECT customers.cust_id, orders.order_num
 FROM customers LEFT OUTER JOIN orders
   ON customers.cust_id = orders.cust_id;

--一.内联结

--1.交叉联结 Cross Join
SELECT t.toy, b.boy
FROM toys AS t
    CROSS JOIN
    boys AS b;
--CROSS JOIN可以省略
SELECT t.toy, b.boy
FROM toys AS t， boys AS b;
--交叉联结会将第一张表的每个值与第二张表的每个值匹配。
--多对多
--2.相等联结
SELECT boys.boy,toys.toy
FROM boys
    INNER JOIN
    toys
ON boys.toy_id=toys.toy_id;
--一对一
--3.不等联结
SELECT boys.boy,toys.toy
FROM boys
    INNER JOIN
    toys
ON boys.toy_id<>toys.toy_id
ORDER BY boys.boy;
--排除特定关系的多对多
--4.自然联结
SELECT boys.boy,toys.toy
FROM boys
    NATURAL JOIN
    toys
ORDER BY boys.boy;
--一对一

--二.外联结
SELECT b.boy,t.toy
FROM boys AS b
LEFT OUTER JOIN toys AS t
ON b.toy_id = t.toy_id;
--LEFT OUTER JOIN（左外连接）接收左表的所有行，并用这些行与右表进行匹配
SELECT b.boy,t.toy
FROM toys t
RIGHT OUTER JOIN boys b
ON b.toy_id=t.toy_id;
