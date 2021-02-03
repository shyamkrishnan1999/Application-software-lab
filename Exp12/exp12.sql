create table if not exists sailors(sid int not null,sname varchar(20) not null,rating int not null,age int not null,primary key(sid));
create table if not exists boats(bid int not null,bname varchar(20) not null,color varchar(20) not null,primary key(bid));
create table if not exists reserves(sid int not null,bid int not null,rday date not null);
insert into sailors values(12,'smith',4,42),(21,'jay',3,53),(43,'erwin',4,29),(104,'jalaj',5,37),(509,'pankaj',4,25),(66,'mathews',5,61),(807,'bob',4,24);
insert into boats values(100,'St annes','Brown'),(101,'St.Lucias','Green'),(102,'St antonys','Red');
insert into reserves values(12,100,'25-2-21'),(12,102,'25-2-21'),(21,101,'26-2-21'),(43,102,'26-2-21'),(104,100,'28-2-21'),(104,102,'28-2-21'),(807,101,'1-3-21');
select * from reserves inner join sailors on reserves.sid=sailors.sid where reserves.bid=101;
select boats.bname from reserves inner join boats on boats.bid=reserves.bid where reserves.sid=(select sid from sailors where sname='bob');
select sailors.sname from sailors inner join reserves on sailors.sid=reserves.sid where reserves.bid=(select bid from boats where color='Red') order by sailors.age;
select sname from sailors where sid in (select sid from reserves group by sid);
SELECT DISTINCT S.sid, S.sname
FROM sailors S, reserves R1, reserves R2
WHERE S.sid = R1.sid AND S.sid = R2.sid
AND R1.rday = R2.rday AND R1.bid <> R2.bid
