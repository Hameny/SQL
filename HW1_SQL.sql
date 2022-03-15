--Вывести все поля и все строки
select * 
from students;

--Вывести всех студентов в таблице
select name from students;

--Вывести только Id пользователей
select id 
from students;

--Вывести только имя пользователей
select name 
from students;

--Вывести только email пользователей
select email 
from students;

--Вывести имя и email пользователей
select name , email 
from students

--Вывести id, имя, email и дату создания пользователей
select id,name,email,created_on
from students;

--Вывести пользователей где password 12333
select name,password 
from students 
where password = '12333';

--Вывести пользователей которые были созданы 2021-03-26 00:00:00
select name,created_on
from students
where created_on = '2021-03-26 00:00:00';

--Вывести пользователей где в имени есть слово Анна
select name 
from students 
where name  LIKE '%Anna%';

-- Вывести пользователей где в имени в конце есть 8
select name 
from students 
where name like '%8';

--Вывести пользователей где в имени в есть буква а
select name
from students
where name like '%a%' ;

--Вывести пользователей которые были созданы 2021-07-12 00:00:00
select name,created_on 
from students s 
where created_on = '2021-07-12 00:00:00';

--Вывести пользователей которые были созданы 2021-07-12 00:00:00 и имеют пароль 1m313
select name,created_on,password 
from students
where created_on = '2021-07-12 00:00:00' and password = '1m313';

--Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть слово Andrey
select name,created_on
from students
where created_on = '2021-07-12 00:00:00' and name like '%Andrey%';

--Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть цифра 8
select name,created_on
from students
where created_on = '2021-07-12 00:00:00' and name like '%8%';

--Вывести пользователя у которых id равен 114
select name,id
from students
where id = 114;

--Вывести пользователя у которых id равен 153
select name,id
from students
where id = 153;

--Вывести пользователя у которых id больше 140
select name,id
from students
where id > 140;

--Вывести пользователя у которых id больше 130
select name, id 
from students
where id < 130;

--Вывести пользователя у которых id меньше 127 и больше 188
select name, id 
from students
where id<127 or id>130;

--Вывести пользователя у которых id меньше либо равно 137
select name, id 
from students
where id=137 or id<137;

-- Вывести пользователя у которых id больше либо равно 137
select name, id 
from students
where id=137 or id>137;

--Вывести пользователя у которых id больше 180 но меньше 190
select name, id 
from students
where id>180 and id<190;

--Вывести пользователя у которых id между 180 и 190
select name, id 
from students
where id between 180 and 190;

--Вывести пользователей где password равен 12333, 1m313, 123313
select name, password
from students
where password = '12333' or password ='1m313' or password ='123313';

--Вывести пользователей где created_on равен 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00
select name, created_on 
from students
where created_on = '2020-10-03 00:00:00' or created_on ='2021-05-19 00:00:00' or created_on ='2021-03-26 00:00:00';

--Вывести минимальный id
select  MIN(id)
from students;

--Вывести максимальный id
select max (id)
from students;

--Вывести количество пользователей
select COUNT(*)
from students;

--Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку возрастания даты добавления пользоватлеля.
select id,name,created_on 
from students
ORDER BY created_on asc;

--Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку убывания даты добавления пользоватлеля
select id,name,created_on 
from students
ORDER BY created_on desc;