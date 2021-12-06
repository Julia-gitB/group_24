create table employees (
	employee_id serial primary key,
	employee_name varchar(50) not null
);


insert into employees(employee_name)
values ('Rebecca Martinez'),
		('Mark Anderson'),
		('Patricia Hicks'),
		('James White'),
		('Margaret Thomas'),
		('Michael Nguyen'),
		('Jeffrey Kelly'),
		('Ricardo Howell'),
		('Shannon Holt'),
		('Carrie Holt'),
		('Patricia Warren'),
		('Glenn Perez'),
		('Benjamin Alexander'),
		('Charles Cooper'),
		('Daisy Wade'),
		('Robert Brown'),
		('Charles Stevens'),
		('William Hunter'),
		('Barbara Smith'),
		('Stephanie Ramirez'),
		('Nicholas Hale'),
		('Ellen Howard'),
		('Barbara Harris'),
		('Ann King'),
		('Mary Mills'),
		('Audrey Wilson'),
		('Jon Wood'),
		('Grace Higgins'),
		('Carolyn Ward'),
		('Olga McLaughlin'),
		('Maxine Tyler'),
		('Karl Santiago'),
		('Robert Valdez'),
		('Lorraine Brown'),
		('William Smith'),
		('Anne Anderson'),
		('Alicia Gonzales'),
		('Dawn Oliver'),
		('Paul Shelton'),
		('Roger Walsh'),
		('Chester Flores'),
		('Regina Hill'),
		('David Jones'),
		('Michelle Wilson'),
		('Gregory Jordan'),
		('Eileen Robinson'),
		('Stacy Clarke'),
		('Teresa West'),
		('Sarah McDaniel'),
		('Carla King'),
		('Henry Stewart'),
		('David Nelson'),
		('Rodney Mitchell'),
		('Josephine Blake'),
		('Rebecca Long'),
		('Robert Wallace'),
		('Michael George'),
		('Kimberly Armstrong'),
		('Emily Wilson'),
		('Rita Patrick'),
		('Sara Washington'),
		('Amy Cox'),
		('Pedro Scott'),
		('Dustin Jones'),
		('Kathleen Peters'),
		('Robert Smith'),
		('Bertha Smith'),
		('Kelly Miles'),
		('Patsy Bates'),
		('Bob Allen');


alter table employees
rename column id to employee_id;

select * from employees;

--create table salary (
--	id serial primary key,
--monthly_salary int not null
--);
	
insert into salary(monthly_salary)
values (1000),
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

alter table salary
rename column salary_id to id; 

create table employee_salary(
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
);

insert into employee_salary(employee_id, salary_id)
values (1, 16),
		(2, 1),
		(3, 9),
		(4, 10),
		(5, 2),
		(6, 4),
		(7, 3),
		(8, 1),
		(9, 11),
		(10, 6),
		(11, 15),
		(12, 6),
		(13, 8),
		(14, 4),
		(15, 1),
		(16, 3),
		(17, 7),
		(18, 5),
		(19, 8),
		(20, 2),
		(21, 5),
		(22, 3),
		(23, 10),
		(24, 13),
		(25, 14),
		(26, 1),
		(27, 2),
		(28, 4),
		(29, 3),
		(30, 9);
	
insert into employee_salary(employee_id, salary_id)
values (71, 1),
		(72, 2),
		(73, 4),
		(74, 2),
		(75, 3),
		(76, 4),
		(77, 1),
		(78, 1),
		(79, 2),
		(80, 3);
	
update employee_salary
set salary_id = 12
where employee_id = 26
		
select * from employee_salary 

create table roles (
	id serial primary key,
role_name int not null unique
);

alter table roles
alter column role_name type varchar(30);

insert into roles(role_name)
values ('Junior Python developer'),
		('Middle Python developer'),
		('Senior Python developer'),
		('Junior Java developer'),
		('Middle Java developer'),
		('Senior Java developer'),
		('Junior JavaScript developer'),
		('Middle JavaScript developer'),
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
		

create table roles_employee (
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key (employee_id)
	references employees(employee_id),
	foreign key (role_id)
	references roles(id)
);

insert into roles_employee(employee_id, role_id)
values (7, 2),
		(1, 16),
		(6, 20),
		(2, 15),
		(3, 4),
		(70, 3),
		(4, 19),
		(5, 18),
		(8, 10),
		(9, 9),
		(10, 11),
		(11, 13),
		(15, 8),
		(19, 7),
		(20, 6),
		(23, 5),
		(26, 11),
		(29,13),
		(28, 14),
		(33, 15),
		(45, 18),
		(67, 4),
		(21, 4),
		(22, 1),
		(27, 2),
		(30, 11),
		(61, 9),
		(40, 5),
		(43, 3),
		(41, 1),
		(39, 19),
		(50, 2),
		(51, 5),
		(52, 4),
		(53, 8),
		(55, 9), 
		(56, 3),
		(57, 4),
		(58, 5),
		(59, 5),
		(60, 15);

select * from salary;
select * from roles;
select* from employee_salary;

select employee_id, monthl
y_salary  from salary
join employee_salary on salary.id = employee_salary.salary_id  
