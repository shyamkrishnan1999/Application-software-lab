use mydb;
create table if not exists emp(id int not null,name varchar(20) not null,salary int not null);
insert into emp values(1,'saurav',20000),(2,'raj',60000),(3,'ravi',45000),(4,'john',35000),(5,'sithara',15000);
delimiter //
create procedure sal_check()
begin
	declare count int;
    update emp set salary=salary+5000 where salary>30000;
    if sql%found then
	count=sql%rowcount;
	dbms_output.put_line(row_count||'rows affected');
    end if;
end;
//
delimiter ;

call sal_check();

