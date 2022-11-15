--select col_name,aggregate function from table_name group by col_name;

select dept,count(emp_id) from New_emp group by dept having count(emp_id)>2;

select location ,sum(salary) from New_emp group by location having sum (salary)>15000;

--How to fetch duplicate records from your table?

---------------------------


--Constraints
--1.Primary key -- not allowed Duplicate and Null
--2.Unique   --not allowed Duplicate
--3.Not null   --not allowed Null

--1.Primary key

create table P1 (id int primary key,name varchar (10));

insert into P1 values (1,'A');
insert into P1 values (1,'B');
insert into P1 values (2,'A');
insert into P1 values (3,null);

--2.Unique

create table P2 (id int unique,name varchar (10) );
insert into P2 values (null,'A');

--3.Not null
create table P3 (id int ,name varchar (10) not null );
insert into P3 values (1,null);

create table P4 (id int primary key ,name varchar (10) unique not null);

select * from INFORMATION_SCHEMA.TABLE_CONSTRAINTS where TABLE_NAME='P4';


----------------------------------


--4. Check

create table p5 (id int,marks int check (marks>40));
insert into P5 values (1,40);

create table p6 (id int,age int check (age between 40 and 60));
insert into P6 values (1,30);

--h.w-Gender- M/F 

---------------------------------


--5.Default

create table P7 (id int, city varchar (10) default 'Pune');

insert into p7 values (1,'Mumbai');

insert into p7 (id) values (2);
select * from p7;
