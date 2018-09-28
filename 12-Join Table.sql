SELECT tab_1_1, tab_2_1, tab_2_2 FROM tab_1, tab_2 WHERE tab_1.tab_1_id = tab_2.tab_2_id ORDER BY tab_1_value, tab_2_value;

SELECT tab_1_1, tab_2_1, tab_2_2 FROM tab_1 INNER JOIN tab_2 ON tab_1.tab_1_id = tab_2.tab_2_id;

SELECT prod_name, vand_name, prod_name, quantity
FROM orderitems, products, vandors
WHERE products.vend_id = venders.vend_id
  AND orderitems.prod_id = products.prod_id
  AND order_num = 20005;

SELECT cust_name, cust_contact
FROM customers
WHERE cust_id IN (SELECT cust_id
                  FROM orderitems
                  WHERE prod_id = 'TNT2');

SELECT cust_name, cust_contact
FROM customers, orders, orderitems
WHERE customers.cust_id = orders.cust_id
  AND orderitems.order_num = orders.order_num
  AND prod_id = 'TNT2';

a
