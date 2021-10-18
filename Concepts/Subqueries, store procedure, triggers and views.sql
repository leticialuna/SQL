SUBQUERIES:

EX 1)

use sql_intro;

select * employees;

select emp_name, salary
from employees 
where salary > (select avg(salary) from employees);

---------------------------------------------------

EX 2)

select * from products;
select * from orderdetails;

select productcode, productname, msrp 
from products
where productcode in (select productcode 
from orderdetails where eachprice < 100); 


--------------------------------------------------

STORE PROCEDURE - when you want to use the code more than multiple times

use sql_it
select * from players;

delimiter &&
create procedure top_players()
begin
select name, country, goals
from players
where goals > 6;
end &&
delimiter ;

call top_player();


--------------------------------------------------

STORE PROCEDURE USING IN

select * from employees;

delimiter //
create procedure sp_sortBySalary(IN var int)
begin
select name, age, salary
from employees
where salary > (select avg(salary) from employees)
order by salary desc
limit var;
end //
delimiter ;

call sp_sortBySalary(3)

--------------------------------------------------

select * from emp_details;

delimiter //
create procedure sp_updateSalary(IN emp_name varchar(200), new_salary float)
begin
update emp_datails set
salary = new_salary where name = emp_name;
end; //


call update_salary('Marry', 80000)

---------------------------------------------------

#STORE PROCEDURE USING OUT

delimiter //
create procedure sp_countEmployees(OUT Total_Emp int)
begin
select count(name) into Total_Emp
from emp_details
where sex = 'F';
end //
delimiter ; 

call sp_countEmployees(@F_emp);
select @F_emp as famale_emps;

--------------------------------------------------

#Trigger in SQL

create table student
(st_roll int, age int, name varchar(30), mark float);

delimiter //
create trigger marks_verify_st
before insert on student
for each row
if new.mark < 0 set new.mark = 0;
end if; //

insert into student
values(401, 10, 'Beth', 7.5),
(405, 11, 'Raul', -2),
(207, 12, 'Christine', 5);

select * from student;

--------------------------------------------------

# VIEWS

create view cust_details
as 
select customername, city
from customer;

select * from cust_details;

drop view cust_details;
