CREATE TABLE customers
(
  cust_id      int      NOT NULL AUTO_INCREMENT,
  cust_name    char(50) NOT NULL,
  cust_address char(50) NOT NULL,
  cust_city    char(50) NULL,
  PRIMARY KEY (cust_id)
)ENGINE = InnoDB;

ALTER TABLE vendors
ADD vend_phone CHAR(20);

ALTER TABLE vendors
DROP COLUMN vend_phone;

DROP TABLE customers;

RENAME TABLE customers TO new_customers;

RENAME TABLE backup_customers TO customers,
             backup_vendors TO vendors;
