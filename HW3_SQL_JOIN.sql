select * from employees;

select * from salary1;

select * from employee_salary2;

TRUNCATE table employee_salary1;
--Clear table
DROP TABLE roles ;
--Delete table

--1.Display all employees whose salaries are in the database, along with their salaries.
select employee_salary2.id,employees.employee_name,salary1.monthly_salary1 
from employee_salary2 
join salary1 on employee_salary2.salary_id  = salary1.id 
join employees on employee_salary2.employee_id = employees.id 

--2. Display all workers whose salary is less than 2000.
select employee_salary2.id,employees.employee_name,salary1.monthly_salary1 
from employee_salary2 
join salary1 on employee_salary2.salary_id  = salary1.id 
join employees on employee_salary2.employee_id = employees.id 
where monthly_salary1 < 2000;

--3.Display all salary items, but no employee is assigned to them. (There is a RFP, but it is not clear who receives it.)
select salary1.id,salary1.monthly_salary1 ,employee_salary2.salary_id ,employee_salary2.employee_id 
from employee_salary2  
left join salary1 on salary1.id = employee_salary2.salary_id
where employee_id  IS null ; 
order by salary1.id asc;


--4.Display all salary positions less than 2000, but no employee has been assigned to them. (There is a RFP, but it is not clear who receives it.)
select salary1.id,salary1.monthly_salary1 ,employee_salary2.salary_id ,employee_salary2.employee_id 
from employee_salary2  
left join salary1 on salary1.id = employee_salary2.salary_id
where   salary1.monthly_salary1 < 2000 and employee_salary2.employee_id  = null; 

--5.Find all employees who have not received a salary.
select employees.employee_name,employee_salary2.salary_id
from employees 
left join employee_salary2 on employees.id = employee_salary2.employee_id
where employee_salary2.salary_id IS null ; 

--6.Display all employees with their job titles.
select employee_name,role_name  
from roles_employee
join roles1 on roles_employee.role_id1 = roles1.id
right join employees on employees.id = roles_employee.employee_id; 
