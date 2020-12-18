USE mydb;
CREATE TABLE IF NOT EXISTS store(order_no INT NOT NULL,code INT NOT NULL,item VARCHAR(50) NOT NULL,qty INT NOT NULL,price NUMERIC NOT NULL,discount NUMERIC NOT NULL,mrp NUMERIC NOT NULL,PRIMARY KEY(CODE));
INSERT INTO store VALUES(1,2342,'Parle-G Biscuit',2,65,5,35),(2,7653,'Brodbond Red Label Tea',1,55,5,60),(3,1235,'Chips',1,30,5,35),(4,9998,'Maggi noodles',2,15,5,20);
SELECT * FROM store;
SELECT mrp,MOD(mrp,9) FROM store;
SELECT mrp,POWER(mrp,2) FROM store;
SELECT mrp,ROUND(mrp/7) FROM store;