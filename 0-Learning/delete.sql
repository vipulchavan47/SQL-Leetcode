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
(4,'Mau','Female',103,7890);

select * from customer;

create table order_details(
  order_id int primary key,        
  package_name varchar(50),
  cust_id int,                     
  foreign key (cust_id) references customer(cust_id) on delete cascade -- ON DELETE CASCADE:
  -- If a customer row is deleted,
  -- all orders linked to that customer
  -- are automatically deleted
  --
  -- Alternative:
  -- ON DELETE SET NULL
  -- → sets cust_id = NULL in order_details
  --   when the parent customer is deleted
);

insert into order_details(order_id,package_name,cust_id) values
(100,'Laptop',1),
(101,'Trimmer',2),
(122,'facepack',3),
(103,'Mouse',4);




delete from customer where cust_id = 3;

select * from customer;

select * from order_details;


-- Rule: You cannot delete a parent row if a child row is referencing it.
-- Reason: The foreign key constraint enforces referential integrity.
-- A foreign key constraint prevents deletion of a parent record while dependent child records exist, to maintain referential integrity.

-- also you cannot update the primary key value of a parent row if a child row is referencing it.
-- Reason: Updating the primary key of a parent record that is referenced by child records would break the foreign key relationship, leading to orphaned child records and violating referential integrity.