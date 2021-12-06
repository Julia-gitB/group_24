--1. Display all employees whose salaries are in the database, along with salaries

select employees.employee_name, salary.monthly_salary
from employees 
join employee_salary on
employee_salary.employee_id = employees.employee_id 
join salary on
employee_salary.salary_id = salary.id;

--2. Display all employees whose salary is less than 2000

select employees.employee_name, salary.monthly_salary
from employees 
join employee_salary on 
employee_salary.employee_id = employees.employee_id 
join salary on
employee_salary.salary_id = salary.id
where monthly_salary < 2000;

--3. Display all salary positions, but no employee has been assigned to them (There is a salary, but it is not clear who gets it)

select employee_name, monthly_salary
from employees right join employee_salary
on employees.employee_id = employee_salary.employee_id 
join salary on
employee_salary.salary_id = salary.id
where employee_name is null

 --4. Display all salary positions less than 2000 but no employee assigned to them (There is a salary, but it is not clear who gets it)

select employee_name, monthly_salary
from employee_salary left join employees
on employee_salary.employee_id = employees.employee_id 
join salary on 
salary.id = employee_salary.salary_id 
where monthly_salary < 2000 and employee_name is null

--5. Display all employees who have not received a salary

select employee_name, monthly_salary
from employees left join employee_salary
on employees.employee_id = employee_salary.employee_id 
left join salary on
employee_salary.salary_id = salary.id
where monthly_salary is null

 --6. Display all employees and the names of their positions

select employee_name, role_name
from employees join roles_employee
on employees.employee_id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id 

--7. Display the names and positions (role names) of Java developers only

select employee_name, role_name
from employees join roles_employee
on employees.employee_id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id 
where role_name like '% Java %';

--8. Display the names and positions (role names) of Python developers only

select employee_name, role_name
from employees join roles_employee 
on employees.employee_id = roles_employee.employee_id 
join roles 
on roles.id  = roles_employee.role_id 
where role_name like '% Python %';

--9. Display the names and positions (role names) of QA engineers only

select employee_name, role_name
from employees join roles_employee 
on employees.employee_id = roles_employee.employee_id 
join roles 
on roles.id  = roles_employee.role_id 
where role_name like '% QA %';

-- 10. Display the names and positions (role names) of Manual QA engineers only

select employee_name, role_name
from employees join roles_employee 
on employees.employee_id = roles_employee.employee_id 
join roles 
on roles.id  = roles_employee.role_id 
where role_name like '% Manual QA %';

--11. Display the names and positions (role names) of Automation QA engineers only

select employee_name, role_name
from employees join roles_employee 
on employees.employee_id = roles_employee.employee_id 
join roles 
on roles.id  = roles_employee.role_id 
where role_name like '% Automation QA %';

--12. Display the names and salaries of Junior specialists

select employee_name, role_name, monthly_salary
from employees join employee_salary 
on employees.employee_id = employee_salary.employee_id 
join salary
on salary.id = employee_salary.salary_id
join roles_employee 
on roles_employee.employee_id = employees.employee_id 
join roles
on roles_employee.role_id = roles.id 
where role_name like 'Junior %';

 --13. Display the names and salaries of Middle specialists

select employee_name, monthly_salary
from employees
join roles_employee on employees.employee_id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id 
join employee_salary on employee_salary.employee_id = employees.employee_id
join salary on salary.id = employee_salary.salary_id 
where role_name like 'Middle %';

--14. Display the names and salaries of Senior specialists

select employee_name, monthly_salary
from employees
join roles_employee on employees.employee_id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id 
join employee_salary on employee_salary.employee_id = employees.employee_id
join salary on salary.id = employee_salary.salary_id 
where role_name like 'Senior %';

--15. Display Java developer salaries

select monthly_salary
from employees
join roles_employee on employees.employee_id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id 
join employee_salary on employee_salary.employee_id = employees.employee_id
join salary on salary.id = employee_salary.salary_id 
where role_name like '% Java developer';

--16. Display Python developer salaries

select monthly_salary
from employees
join roles_employee on employees.employee_id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id 
join employee_salary on employee_salary.employee_id = employees.employee_id
join salary on salary.id = employee_salary.salary_id 
where role_name like '% Python developer';

--17. Display the names and salaries of Junior Python developers

select monthly_salary
from employees
join roles_employee on employees.employee_id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id 
join employee_salary on employee_salary.employee_id = employees.employee_id
join salary on salary.id = employee_salary.salary_id 
where role_name like 'Junior Python developer';

--18. Display the names and salaries of  Middle JS developers

select employee_name, monthly_salary
from employees
join roles_employee on employees.employee_id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id 
join employee_salary on employee_salary.employee_id = employees.employee_id
join salary on salary.id = employee_salary.salary_id 
where role_name like 'Middle JavaScript developer';

--19. Display the names and salaries of Senior JS developers

select employee_name, monthly_salary
from employees
join roles_employee on employees.employee_id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id 
join employee_salary on employee_salary.employee_id = employees.employee_id
join salary on salary.id = employee_salary.salary_id 
where role_name like 'Senior JavaScript developer';

--20. Display the salaries of Junior QA engineers

select monthly_salary
from employees
join roles_employee on employees.employee_id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id 
join employee_salary on employee_salary.employee_id = employees.employee_id
join salary on salary.id = employee_salary.salary_id 
where role_name like 'Junior % QA engineer';

--21. Display the average salary of all Junior specialists

select AVG(monthly_salary)
from employees
join roles_employee on employees.employee_id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id 
join employee_salary on employee_salary.employee_id = employees.employee_id
join salary on salary.id = employee_salary.salary_id 
where role_name like 'Junior %';

--22. Display the sum of JS developers' salaries

select sum(monthly_salary)
from employees
join roles_employee on employees.employee_id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id 
join employee_salary on employee_salary.employee_id = employees.employee_id
join salary on salary.id = employee_salary.salary_id 
where role_name like '% JavaScript developer';

--23. Display the minimum salary of QA engineers

select min(monthly_salary)
from employees
join roles_employee on employees.employee_id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id 
join employee_salary on employee_salary.employee_id = employees.employee_id
join salary on salary.id = employee_salary.salary_id 
where role_name like '% QA %';

--24. Display the maximum salary of QA engineers

select max(monthly_salary)
from employees
join roles_employee on employees.employee_id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id 
join employee_salary on employee_salary.employee_id = employees.employee_id
join salary on salary.id = employee_salary.salary_id 
where role_name like '% QA %';

--25. Display the count of QA engineers

select count(role_name)
from roles join roles_employee
on roles.id  = roles_employee.role_id 
where role_name like '% QA %';

--26. Display the count of Middle specialists

select count(role_name)
from roles join roles_employee
on roles.id  = roles_employee.role_id 
where role_name like 'Middle %';

 --27. Display the count of developers

select count(role_name)
from roles join roles_employee
on roles.id  = roles_employee.role_id 
where role_name like '% developer';

--28. Display the sum of all developers' salaries

select sum(monthly_salary)
from employees
join roles_employee on employees.employee_id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id 
join employee_salary on employee_salary.employee_id = employees.employee_id
join salary on salary.id = employee_salary.salary_id 
where role_name like '% developer';

--29.Display the names, positions (role names) and salaries of all specialists in ascending order

select employee_name, role_name, monthly_salary
from employees
join roles_employee on employees.employee_id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id 
join employee_salary on employee_salary.employee_id = employees.employee_id
join salary on salary.id = employee_salary.salary_id 
order by monthly_salary;

--30. Display the names, positions and salaries of all specialists in ascending order for specialists whose salaries are from 1700 to 2300

select employee_name, role_name, monthly_salary
from employees
join roles_employee on employees.employee_id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id 
join employee_salary on employee_salary.employee_id = employees.employee_id
join salary on salary.id = employee_salary.salary_id 
where monthly_salary between 1700 and 2300
order by monthly_salary;

--31. Display the names, positions (role names) and salaries of all specialists in ascending order for specialists whose salary is less than 2300

select employee_name, role_name, monthly_salary
from employees
join roles_employee on employees.employee_id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id 
join employee_salary on employee_salary.employee_id = employees.employee_id
join salary on salary.id = employee_salary.salary_id 
where monthly_salary <2300
order by monthly_salary;

--32. Display the names, positions (role names) and salaries of all specialists in ascending order for specialists whose salary is equal to 1100, 1500, 2000

select employee_name, role_name, monthly_salary
from employees
join roles_employee on employees.employee_id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id 
join employee_salary on employee_salary.employee_id = employees.employee_id
join salary on salary.id = employee_salary.salary_id 
where monthly_salary in (1100, 1500, 2000)
order by monthly_salary;