#-------------JOINS-------------

SELECT *
FROM parks_and_recreation.employee_demographics;

SELECT *
FROM parks_and_recreation.employee_salary;

SELECT * 
FROM parks_and_recreation.employee_demographics AS EMP_DEM
INNER JOIN parks_and_recreation.employee_salary AS EMP_SAL
WHERE EMP_DEM.employee_id = EMP_SAL.employee_id;

SELECT DEM.employee_id, AGE, OCCUPATION 
FROM parks_and_recreation.employee_demographics AS DEM
JOIN parks_and_recreation.employee_salary AS SAL
WHERE DEM.employee_id=SAL.employee_id;

#-----OUTER JOIN--------------EMPLOYEE SALARY TABLE IS FINDING FOR A MATCH FOR EVERY ROW IN DEMOGRAPHICS TABLE IF THERE IS NO MATCH THEN WILL BE NULL
#-----RIGHT JOIN --- OR SAY RIGHT OUTER JOIN ---------


SELECT *
FROM parks_and_recreation.employee_demographics AS DEM
RIGHT OUTER JOIN parks_and_recreation.employee_salary AS SAL
ON DEM.employee_id=SAL.employee_id;

#------------LEFT JOIN ----- OR SAY LEFT OUTER JOIN-------NOW DEMOGRAPHICS TABLE IS FINDING FOR A MATCH IN SALARY TABLE-----

SELECT *
FROM parks_and_recreation.employee_demographics AS DEM
LEFT JOIN parks_and_recreation.employee_salary AS SAL
ON DEM.employee_id=SAL.employee_id;


#----SELF JOIN----------

SELECT EMP1.employee_id AS EMP_SANTA,
EMP1.FIRST_NAME AS FIRST_NAME_SANTA,
EMP1.LAST_NAME AS LAST_NAME_SANTA,
EMP2.employee_id AS EMP_NAME,
EMP2.FIRST_NAME AS FIRST_NAME_EMP,
EMP2.LAST_NAME AS LAST_NAME_EMP
FROM parks_and_recreation.employee_salary AS EMP1
JOIN parks_and_recreation.employee_salary AS EMP2 
ON EMP1.employee_id + 1 = EMP2.employee_id ;

#-------------JOINING MULTIPLE TABLES--------------


SELECT * 
FROM parks_and_recreation.employee_demographics AS EMP_DEM
INNER JOIN parks_and_recreation.employee_salary AS EMP_SAL
ON EMP_DEM.employee_id = EMP_SAL.employee_id
INNER JOIN parks_and_recreation.parks_departments AS PD
ON EMP_SAL.dept_id = PD.department_id;

select *
FROM parks_and_recreation.parks_departments;

-----------------





