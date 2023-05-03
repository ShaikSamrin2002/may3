create table orders1(
order_id int , cus_id int , order_date date);
insert into orders1 values(20,100,'2022-04-03'),
(21,101,'2000-08-13'),(22,102,'2020-04-29'),
(23,103,'1999-12-01'),(24,104,'2002-08-20');

create table customer1(
cust_id int,name varchar(25),contact_name varchar(25),country varchar(25));
insert into customer1 values(100,'anil','pandu','india'),
(100,'maaji','bundu','russia'),(108,'baavji','behen','us'),
(109,'laddu','mothi','uk'),(110,'jalebi','chocolate','india');

select * from orders1;
select * from customer1;

-- JOIN the entries having same cutomer ids
select orders1.order_id,customer1.name,orders1.order_date from orders1
inner join customer1 on orders1.cus_id=customer1.cust_id;

alter table orders1 add shipping_id int;

select * from orders1;
update orders1 set shipping_id=1289 where order_id=20;
update orders1 set shipping_id=12390 where order_id=21;
update orders1 set shipping_id=6774 where order_id=22;
update orders1 set shipping_id=3265 where order_id=23;
update orders1 set shipping_id=6453 where order_id=24;

create table shipping(
shipping_id int,name varchar(30));
insert into shipping values(1236,'xxx'),(5765,'yyy'),(7658,'zzz'),(3434,'sss');
insert into shipping values(1289,'www');
select * from shipping;
select * from orders1;
select * from customer1;


-- joining three tables
select orders1.order_id,customer1.name,shipping.name as shi_name from
((orders1 inner join customer1 on orders1.cus_id=customer1.cust_id)
inner join shipping on orders1.shipping_id=shipping.shipping_id);


-- left join of orders1 and customer1 table
select customer1.name,orders1.order_id from customer1
left join orders1 on customer1.cust_id=orders1.cus_id order by customer1.name; 
-- order by customer name 


-- right join of orders and customers tables
select name,country,order_date from customer1 right join orders1 on customer1.cust_id=orders1.cus_id;

select customer1.name,orders1.order_id from customer1
left join orders1 on customer1.cust_id=orders1.cus_id where customer1.name like 'b%' order by customer1.name;