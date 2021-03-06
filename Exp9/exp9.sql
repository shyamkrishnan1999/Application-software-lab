USE mydb;
CREATE TABLE IF NOT EXISTS Employee(Code INT NOT NULL,Name VARCHAR(50) NOT NULL,DOB VARCHAR(50) NOT NULL,Designation VARCHAR(50) NOT NULL,Salary INT NOT NULL,PRIMARY KEY(Code));
CREATE TABLE IF NOT EXISTS Deposit(baccno VARCHAR(50) NOT NULL,branch_name VARCHAR(50) NOT NULL,amount INT NOT NULL);
INSERT INTO Employee VALUES(243212,'Rajesh','18-09-1992','Clerk',20000),(295876,'Sreekumar','16-06-1976','Peon',35000),(723699,'John','05-07-1980','Manager',65000),(809762,'Iqbal','23-08-1988','HR',40000);
INSERT INTO Deposit VALUES('4ERTHKH','Thiruvalla',600000),('5CJHLHK','Chegannur',85000),('2ZJGFJ','Mavelikkara',10000000);
SELECT Code,Name,Designation FROM Employee ORDER BY NAME DESC;
SELECT * FROM Deposit;