--1. Print all fields and all lines
select * from students;

--2. Print all students in a table
select name from students;

 --3. Print only Id of users
select id from students;

--4. Print only name of users
select name from students;

--5. Print only email of users
select email from students; 

--6. Print name end email of users
select name, email from students;

--7. Print id, name, email and creation date of users
select id, name, email from students;

--8. Print users where password is 12333
select name from students
where password = '12333';

--9. Print users who were created 2021-03-26 00:00:00
select * from students
where created_on = '2021-03-26 00:00:00';

 --10. Print users where the word '%Анна%' is in the name
select * from students
where name like '%Анна%';

--11. Print users where there is a number 8 at the end of the name
select * from students s where name like '%8';

--12. Print users where there is a letter "a" in the name in
select * from students where name like '%a%';

 --13. Print users who were created 2021-07-12 00:00:00

select * from students where created_on = '2021-07-12 00:00:00';

--14. Print users who were created 2021-07-12 00:00:00 and have a password "1m313"
select * from students where created_on = '2021-07-12 00:00:00' and password = '1m313';

--15. Print users who were created 2021-07-12 00:00:00 and who have the word "Andrey" in the name
select * from students where created_on = '2021-07-12 00:00:00' and name like '%Andrey%';

 --16. Print users who were created 2021-07-12 00:00:00 and who have the number 8 in the name
select * from students where created_on = '2021-07-12 00:00:00' and name like '%8%';


--17.Print user with id equal to 10
select * from students where id = 10;

 --18. Print user with id equal to 53
select * from students where id = 53;

--19. Print users with id greater than 40
select * from students where id > 40;

 --20. Print users with id less than 30
select * from students where id < 30;

 --21. Print users whose id is less than 27 or greater than 88
select * from students where id < 27 or id > 88;

 --22. Print users whose id is less than or equal to 37
select * from students where id <= 37;

--23. Print users whose id is greater than or equal to 37
select * from students where id >= 37;

-- 24. Print users whose id is greater than 80 but less than 90
select * from students where id > 80 and id <90;

 --25. Print users with id between 80 and 90
select * from students where id between 80 and 90;

--26. Print users where password is 12333, 1m313, 123313
select * from students where password in ('12333', '1m313', '123313');

--27. Print users where created_on is 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00
select * from students where created_on in ('2020-10-03 00:00:00', '2021-05-19 00:00:00', '2021-03-26 00:00:00');

--28. Print the minimum id
select MIN(id) as Smollet_Id from students;

--29. Print the maximum id
select MAX(id) as Largest_Id from students;

--30. Print the number of users
select COUNT(id) as Count_of_users from students;

--31. Print user id, name, user creation date. Sort in ascending order of the date the user was added.
select id, name, created_on from students
order by created_on;

--32. Print user id, name, user creation date. Sort in descending order of added user date
select id, name, created_on from students
order by created_on desc;

