create table customer(
  cust_id int primary key,
  name varchar(50) not null,
  gender varchar(10),
  order_id int unique,
  pincode int 
);

insert into customer(cust_id,name,gender,order_id,pincode) values 
(1,'Max','Male',100,10200),
(2,'Aron','Male',101,19398),
(3,'Julie','Female',122,8227),
(4,'Mau','Female',103,7890),
(5,'Naomi','Female',999,9899);


select * from customer;

create table order_details(
  order_id int primary key,
  package_name varchar(50),
  cust_id int,
  foreign key (cust_id) references customer(cust_id) on delete cascade -- also on delete set null
);

insert into order_details(order_id,package_name,cust_id) values
(100,'Laptop',1),
(101,'Trimmer',2),
(122,'facepack',3),
(103,'Mouse',4);

-- inner join
-- syntax: SELECT columns FROM table1 INNER JOIN table2 ON table1.column_name = table2.column_name;
-- for applying inner join we use foreign key and primary key relationship
-- here cust_id is primary key in customer table and foreign key in order_details table
select c.* , o.* from customer as c inner join order_details as o on c.cust_id = o.cust_id;
