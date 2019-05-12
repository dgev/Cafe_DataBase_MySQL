create table employee (   
SSN  varchar(10),  
first_name  varchar(20) not null, 
last_name   varchar(20) not null, 
job_position    varchar(50), 
email       varchar(50) unique, 
salary      int(6), 
primary key (SSN)); 

create table emp_phone_number (   
SSN  varchar(10),  
phone_number  char(9), 
foreign key (SSN) references employee (SSN) );

create table customer (
SSN varchar(10),
first_name varchar(20) not null,
last_name varchar(20) not null,
customer_status varchar(15),
email varchar(50) unique,
birth_date date,
city_village varchar(10),
street varchar(10),
building int(3),
apartment int(3),
primary key (SSN));

create table cust_phone_number (
SSN varchar(10),
phone_number char(9),
foreign key (SSN) references customer (SSN));

create table category (   
category_id   varchar(10),
category_name varchar(20), 
primary key (category_id) );

create table subcategory(
category_id varchar(10),
sub_category  varchar(15),
sub_category_id varchar(15),
primary key(sub_category_id),
foreign key (category_id) references category(category_id));

create table menu (   
product_id   varchar(10) not null, 
product_name varchar(30), 
cost     int(6) not null,  
sub_category_id varchar(15) not null, 
primary key (product_id),
foreign key (sub_category_id) references subcategory(sub_category_id) );

create table orders (   
order_id       varchar(10) not null, 
customer_SSN   varchar(10) not null,  
employee_SSN   varchar(10) not null, 
cost       int(6) not null, 
order_date     date not null, 
required_date  date not null, 
delivery_date   date not null, 
primary key (order_id),   
foreign key (customer_SSN) references customer (SSN),  
foreign key (employee_SSN) references employee (SSN)); 

create table orderdetails (   
orderdetails_id varchar(10) not null,  
order_id        varchar(10) not null, 
product_id      varchar(10) not null, 
amount      int(3) not null, 
primary key (order_id, orderdetails_id),   
foreign key (order_id) references orders(order_id), 
foreign key (product_id) references menu(product_id));