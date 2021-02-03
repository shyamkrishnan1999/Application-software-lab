use mydb;
create table if not exists emp(id int not null,name varchar(20) not null,salary int not null);
insert into emp values(1,'saurav',20000),(2,'raj',60000),(3,'ravi',45000),(4,'john',35000),(5,'sithara',15000);
delimiter //
create trigger emp_restrict before update on emp
begin
    declare v_time NUMBER;
    set v_time := EXTRACT(HOUR FROM CURRENT_TIMESTAMP);
    IF v_time BETWEEN 17 AND 24 THEN
        raise_application_error(-20100, 'Cannot update during 5pm to 12am');
    END IF;
end;
//
delimiter ;