--1.Create table employees
create table employees(
	id serial primary key,
	employee_name varchar(50) not null
);

--2.Fill in the tables employee 70 lines.
insert into employees(employee_name)
values('Stanley'),
	  ('Tadeo'),
      ('Wayne'),
	  ('Harrison'),
	  ('Vander'),
	  ('Pete'),
	  ('Adriel'),
	  ('Hugh'),
	  ('Darren'),
	  ('River'),
	  ('Fabian'),
	  ('Perseus'),
	  ('Armando'),
	  ('Kaleb'),
	  ('William'),
	  ('Yasir'),
	  ('Jeremiah'),
	  ('Sebastian'),
	  ('Phillip'),
	  ('Miles'),
	  ('Zaine'),
	  ('Xandros'),
	  ('Ezequiel'),
	  ('Holden'),
	  ('William'),
	  ('Uzziah'),
	  ('Leonidas'),
      ('Uday'),
	  ('Mario'),
	  ('Jaxson'),
	  ('Anderson'),
	  ('Valente'),
	  ('Sebastian'),
	  ('Virginius'),
	  ('Zev'),
	  ('Malachi'),
	  ('Phineas'),
	  ('Yoshinobu'),
	  ('Wylie'),
	  ('Xuan'),
	  ('Israel'),
	  ('Oren'),
	  ('Umar'),
	  ('Dominick'),
	  ('Jameson'),
	  ('Kane'),
	  ('Osvaldo'),
	  ('Thaddeus'),
	  ('Ace'),
	  ('Killian'),
	  ('Natan'),
	  ('Zeus'),
	  ('Barrett'),
	  ('Yanni'),
	  ('Dawson'),
	  ('Emery'),
	  ('Iver'),
	  ('Izaiah'),
	  ('Mohamed'),
	  ('Roberto'),
	  ('Marcus'),
	  ('London'),
	  ('Quirino'),
	  ('Issac'),
	  ('Eric'),
	  ('Isaiah'),
	  ('Yosef'),
	  ('Nathaniel'),
	  ('Xavier'),
	  ('Uria');

--3.Create table salary
create table salary1(
	id serial primary key,
	monthly_salary1 int not null
); 

--4.Fill in the table salary 15 lines:
insert into salary1(monthly_salary1)
values(1000),
	  (1100),
	  (1200),
	  (1300),
	  (1400),
	  (1500),
	  (1600),
	  (1700),
	  (1800),
	  (1900),
	  (2000),
	  (2100),
	  (2200),
	  (2300),
	  (2400),
	  (2500);

--5.Create table employee_salary
create table employee_salary(
	id serial primary key,
	employee_id int not null,
	salary_id int not null,
	foreign key(employee_id)
		references employees(id),
	foreign key(salary_id)
		references salary1(id)
);

--6.Fill in the table employee_salary 40 lines:
insert into employee_salary(employee_id,salary_id)
values(3, 7),
      (1, 4),
      (5, 9),
      (40, 13),
      (23, 4),
      (11, 2),
      (52, 10),
      (15, 14),
      (26, 16),
      (16, 1),
      (33, 7),
      (2, 4),
      (4, 7),
      (41, 3),
      (43, 5),
      (21, 5),
      (39, 14),
      (17, 12),
      (36, 11),
      (13, 10),
      (37, 9),
      (42, 4),
      (43, 6),
      (41, 14),
      (39, 11),
      (61, 15),
      (63, 12),
      (70, 3),
      (63, 7),
      (8, 4),
      (9, 7),
      (38, 4),
      (39, 7),
      (44, 4),
      (45, 7),
      (46, 4),
      (47, 7),
      (48, 4),
      (49, 7),
      (50, 4);

select * from employee_salary ;
	
	--7.Create table roles1
create table roles1(
	id serial  primary key,
    role_name int not null unique
);

select * from roles1;

--8.Change the post type role_name  int to varchar(30)
alter table roles1 
alter column role_name type varchar(30) using role_name::varchar(30);

select * from roles1;

--9.Fill in the table roles 20 lines
insert into roles1(role_name)
values('Junior Python developer'),
      ('Middle Python developer'),
      ('Senior Python developer'),
	  ('Junior Java developer'),
	  ('Middle Java developer'),
	  ('Senior Java developer'),
	  ('Junior JavaScript developer'),
	  ('Senior JavaScript developer'),
	  ('Junior Manual QA engineer'),
	  ('Middle Manual QA engineer'),
	  ('Senior Manual QA engineer'),
	  ('Project Manager'),
	  ('Designer'),
	  ('HR'),
	  ('CEO'),
	  ('Sales manager'),
	  ('Junior Automation QA engineer'),
	  ('Middle Automation QA engineer'),
	  ('Senior Automation QA engineer');

select * from roles1;

--10.Create table roles_employee
create table roles_employee(
	id serial primary key,
	employee_id int not null unique,
	FOREIGN KEY (employee_id)  REFERENCES employees (id),
	role_id1 int not null ,
	foreign key (role_id1) references roles(id)
	);
	
select * from roles_employee  ;

--11.Fill in the table roles_employee 40 lines:
insert into roles_employee(employee_id, role_id1)
values(6, 1),
	  (7, 2),
	  (8, 3),
	  (9, 4),
	  (10, 5),
	  (11, 6),
	  (12, 7),
	  (14, 8),
	  (15, 9),
	  (16, 10),
	  (17, 11),
	  (18, 12),
	  (19, 13),
	  (20, 14),
	  (21, 15),
	  (22, 1),
	  (23, 2),
	  (24, 3),
	  (25, 4),
	  (26, 5),
	  (27, 6),
	  (31, 7),
	  (32, 8),
	  (33, 9),
	  (34, 10),
	  (35, 11),
	  (36, 12),
	  (37, 13),
	  (38, 14),
	  (41, 15),
	  (51, 1),
	  (52, 2),
	  (53, 3),
	  (54, 4),
	  (55, 5),
	  (56, 6),
	  (57, 7),
	  (58, 8),
	  (59, 9),
	  (61, 10);
	  