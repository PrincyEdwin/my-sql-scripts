#---------------STRING FUNCTIONS-----------

SELECT LENGTH('PRAISE THE LORD');


SELECT LOWER('AISHA SALON');

SELECT FIRST_NAME, UPPER(FIRST_NAME)
FROM parks_and_recreation.employee_demographics;

SELECT TRIM('           SKY           ');

SELECT LTRIM('           SKY           ');

SELECT FIRST_NAME,
LEFT(FIRST_NAME, 4),
RIGHT(FIRST_NAME, 4),
SUBSTRING(FIRST_NAME, 3,2),
BIRTH_DATE,
SUBSTRING(BIRTH_DATE,6,2) AS BIRTH_MONTH
FROM parks_and_recreation.employee_demographics;

#------------replace-----------

SELECT FIRST_NAME, REPLACE(FIRST_NAME, 'e', 'Z')
FROM parks_and_recreation.employee_demographics;

SELECT LOCATE('E', 'JESSICA');

#-------CONCAT--------
