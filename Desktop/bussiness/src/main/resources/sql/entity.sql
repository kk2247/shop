create  database bussiness;

use bussinuss;

create table user (
user_id int auto_increment,
user_name varchar(50),
password varchar(50),
phone_number varchar(50),
open_id varchar(80) ,
avatal_url varchar(80),
gender varchar(10),
country varchar(50),
city varchar (50),
area varchar (50),
email varchar(50),
ip varchar(80),
lasr_login_time TIMESTAMP ,
login_times int default 0,
primary key (user_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table address(
address varchar(120),
address_id int auto_increment,
user_id int,
phone_number varchar (20),
province varchar (20),
city varchar (50),
area varchar (50),
postal_code varchar (10)
primary key (address_id),
foreign key (user_id) references user(user_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE order(
order_id int auto_increment,
state int ,
amount float ,
create_time timestamp ,
payment_type int ,
user_id int,
user_name varchar (50),
address varchar(120),
phone_num varchar (20),
postal_fee float ,
primary  key(order_id),
foreign key (user_id) references user(user_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table category(
category_id int auto_increment,
category_name varchar (50),
primary key(category_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table product (
product_id int auto_increment,
product_name varchar(50),
product_number int,
description varchar(200),
category_id int,
state int,
create_time timestamp ,
updata_time timestamp ,
sales_volume int,
primary key(product_id),
foreign key (category_id) references category(category_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table admin(
admin_id int auto_increment,
admin_acount varchar(50),
adminn_password varchar (50),
primary key (admin_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table coupon(
coupon_id int auto_increment,
discount float ,
min_amount float ,
category_id int,
state int,
number int,
user_id int,
create_time timestamp ,
dead_line timestamp ,
primary key(coupon_id),
foreign key (user_id) references user(user_id),
foreign key (category_id) references category(category_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table item (
item_id int auto_increment,
order_id int ,
product_id int,
price float ,
name varchar (50),
quantity int,
primary key (item_id),
foreign key(order_id) references order(order_id),
foreign key (product_id)references product(product_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table item_attribute(
attribute_id int auto_increment,
item_id int ,
attribute_name varchar(50),
attribute_value varchar (50),
primary key (attribute_id),
foreign key (item_id) references item(item_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table img(
img_id int auto_increment,
img_path varchar (50),
product_id int,
primary key (img_id),
foreign key (product_id) references product(product_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table attribute(
attribute_id int auto_increment,
product_id int,
attribute_name varchar (50),
primary key (attribute_id),
foreign key (product_id) references product(product_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table attribute_value(
value_id int auto_increment,
value varchar(50),
attribute_id int,
primary key (value_id),
foreign key (attribute_id) references attribute(attribute_id)
)