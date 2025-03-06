SELECT * FROM parks_and_recreation.employee_demographics;

SELECT * FROM parks_and_recreation.employee_salary;

SELECT first_name,
age,
(age + 10) * 10 
FROM parks_and_recreation.employee_demographics;

#--------WHERE Clause----------


SELECT * 
FROM parks_and_recreation.employee_salary
WHERE salary <= 50000 ;


SELECT *
FROM parks_and_recreation.employee_demographics
WHERE gender != 'FEMALE' ;

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE birth_date > '1985-01-01';

-- AND OR NOT ------Logical Operators---
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE birth_date > '1985-01-01'
AND NOT gender = 'MALE';

#-----LIKE STATEMENT---------------% AND _---------( % SAYS IT CAN HAVE ANY LETTERS AFTER IT.)----(_ SAYS EXACTLY IT SHOULD HAVE HOW MANY CHARACTERS) 
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE 'JER%';

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE 'A__%';

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE birth_date LIKE '198%';

------------- GROUP BY----------------
SELECT gender
FROM parks_and_recreation.employee_demographics
GROUP BY GENDER;

#--------- YOU HAVE TO SELECT THE SAME COLUMN AS GROUP BY COLUMN---------
SELECT GENDER, avg(AGE), MAX(AGE), MIN(AGE), COUNT(AGE)
FROM parks_and_recreation.employee_demographics
GROUP BY GENDER;

#-------------------ORDER BY------------------------

SELECT FIRST_NAME
FROM parks_and_recreation.employee_demographics
ORDER BY first_name DESC;

SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY GENDER,AGE DESC;

#--------------------------------I CAN ALSO SAY POSITION OF THE COLUMNS INSTEAD OF NAME---------
#-------------NOT RECOMMENDED FOR COMPLEX QUERIES-------------------
 SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY 5,4 DESC;

#----------using DISTINCT----------

SELECT distinct gender
FROM parks_and_recreation.employee_demographics;

#-------------------HAVING VS WHERE----------

SELECT OCCUPATION, AVG(SALARY)
FROM parks_and_recreation.employee_salary
WHERE occupation LIKE '%MANAGER%'    # FILTERED AT THE ROW LEVEL#
GROUP BY occupation
HAVING AVG(SALARY) > 75000; 		# IF YOU WANT TO FILTERED AT THE AGGREGATE FUNCTION LEVEL YOU HAVE TO USE HAVING CLAUSE ---  #


#--------LIMIT & ALIASING ------------

SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY AGE DESC
LIMIT 3, 2;			#-----THIS WILL LIMIT BY 3 ROWS AND GIVE 2 ROWS AFTER THAT-------#

#---------ALIASING-------------

SELECT GENDER, AVG(AGE) AS AVG_AGE 
FROM parks_and_recreation.employee_demographics
GROUP BY GENDER
HAVING AVG_AGE > 40 ;







