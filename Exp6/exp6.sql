USE mydb;
CREATE TABLE IF NOT EXISTS store(order_no INT NOT NULl,code INT NOT NULL,item VARCHAR(50) NOT NULL,quantity INT NOT NULL,price NUMERIC NOT NULL,discount NUMERIC NOT NULL,mrp NUMERIC NOT NULL,PRIMARY KEY(code));
INSERT INTO store VALUES(1,2145,'Shampoo',5,45,5,50),(2,3765,'Noodles',2,20,10,30),(3,4325,'Rice',5,200,50,250),(4,7878,'Pencil',10,90,10,100);
SELECT * FROM store;
CREATE VIEW myview AS SELECT item,quantity FROM store;
UPDATE store SET order_no=5 WHERE item='Noodles'; 
UPDATE store SET item='pen' WHERE order_no=4;
SELECT * FROM myview;
DROP VIEW myview;
