create table staff(
id int,name varchar(30),age int,package int);

create table payment(
id int,p_date date,staff_id int,amount int);

insert into staff values(10,'samrin',25,10000),
(11,'ishal',29,20000),(12,'zaibu',30,16000),(13,'saleha',35,20000);
insert into payment values(100,'2023-04-23',10,1200),
(101,'2022-06-28',11,1250),(102,'2021-11-09',12,1380),(103,'2012-09-10',19,1400);

select * from staff;
select * from payment;

select s.id,name,age,amount from staff s,payment p where s.id=p.staff_id;

