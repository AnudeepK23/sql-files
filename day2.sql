use data;

select * from dept;
insert into dept(id,subject,marks)
 values (9,'political',77),(10,'history',87),(11,'civics',23);
 
select * from dept where subject='civics' || subject = 'political';

select * from dept_name where marks in (select id from dept where subject='civics' || marks >80);

update dept set subject='boss' where id =7;
select * from dept;

alter table dept add result varchar(20);

alter table dept add total varchar(20);

alter table dept modify result int;
select * from student_marks;
alter table student_marks drop name

select * from dept;

alter table dept modify result varchar(20);


insert into order_sales(1,'Basha','KGF',1);
select * from order_sales;

select * from sales;

use data;

select * from sales;
select * from order_sales;

select s.salesid,p.productname,s.salesname from sales s
inner join order_sales p
on s.salesid=p.salesid;

select * from sales s
inner join order_sales p
on s.salesid=p.id;

select * from order_sales where salesid=(select salesid from sales where salesname='boss');

select s.salesid,p.productname,s.salesname from sales s
right join order_sales p
on s.salesid=p.salesid;

select s.address,p.productname from sales s
left join order_sales p
on s.salesid=p.salesid;

use data;

create table sales(
salesid int not null primary key,
salesname varchar(20),
address varchar(20)
);

create table order_sales(
id int primary key,
productname varchar(15),
address varchar(15),
salesid int,
constraint FK_order 
FOREIGN KEY(salesid)
REFERENCES sales(salesid)
);

insert into sales 
values(4,'Mass','Maharastra')

select * from sales;
select * from order_sales;
insert into order_sales
values(2,'Pawan','Andhra',3);

alter table sales add price int;

delete from sales where salesid=1;
select * from sales;


select * from sales;
select * from order_sales;

select s.salesid,p.productname,s.salesname from sales s
inner join order_sales p
on s.salesid=p.salesid;

select * from sales s
inner join order_sales p
on s.salesid=p.id;

select * from order_sales where salesid=(select salesid from sales where salesname='boss');

select s.salesid,p.productname,s.salesname from sales s
right join order_sales p
on s.salesid=p.salesid;

select s.address,p.productname from sales s
left join order_sales p
on s.salesid=p.salesid;




