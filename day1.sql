--creating database--
create database data;


use data;



select * from student_marks;
insert into student_marks(id,marks,name)
values (1,620,'king'),(2,110,'chinnu'),(3,700,'lambu');

select * from student_marks where ( marks>500 and 
name like '%g') and (id>0);

select id as roll from student_marks;

select * from student_marks order by name desc;

select * from student_marks where id>1 order by id desc;

select count(*) from student_marks where (marks>620);
select count(*) from student_marks;
select * from student_marks group by name;

select distinct name,id,marks from student_marks;



select * from dept_name;
insert into dept_name(id,marks,dept_name)
values (7,60,'kan'),(8,10,'chinese'),(9,70,'lag');

select * from dept_name;
insert into dept_name(id,marks,dept_name)
values (7,60,'kan'),(8,10,'chinese'),(9,70,'lag');

select d.* from dept_name d, student_marks s where 
s.id=1;

select s.* from dept_name d, student_marks s 
where s.marks>50 or d.dept_name='kan' and s.id=d.id;




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

