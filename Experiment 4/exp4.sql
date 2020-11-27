USE mydb;
CREATE TABLE IF NOT EXISTS Department(code INT NOT NULL,title VARCHAR(20) NOT NULL,dept_name VARCHAR(20) UNIQUE NOT NULL,dept_id INT NOT NULL,salary INT NOT NULL,PRIMARY KEY(code));
CREATE TABLE IF NOT EXISTS Instructor(Id INT NOT NULL AUTO_INCREMENT,name VARCHAR(20) NOT NULL,code INT NOT NULL,PRIMARY KEY(id),FOREIGN KEY(code) REFERENCES Department(code));
INSERT INTO Department VALUES(1,'Manager','Adminstration',3,5000),(58,'Salesman','Sales',3,1000),(59,'Officer','HR',4,3000),(33,'Computer operator','IT',5,4000);
INSERT INTO Instructor(name,code) VALUES('Arjun kumar',1),('Bibin pal',58),('Suhasini M',59),('Yeshwanth J',33);
SELECT * FROM Department WHERE salary>2000;
