select * from employees;
select first_name, last_name,email from employees;
select distinct job_title from jobs;
select count(employee_id) from employees;
select * from employees where hire_date > '2015-01-01';
select * from employees where salary >'5000';
SELECT * FROM jobs WHERE job_title LIKE '%Manager%';
select * from employees where commission_pct is null or commission_pct='0';
select * from employees order by salary desc limit 5;
SELECT AVG(salary) AS average_salary FROM employees;
SELECT  MIN(salary) AS min_salary, MAX(salary) AS max_salary 
FROM employees
GROUP BY salary;
SELECT e.first_name, e.last_name, d.department_name 
FROM employees e
JOIN departments d ON e.department_id = d.department_id;
SELECT e.first_name, e.last_name, j.job_title, d.location 
FROM employees e
JOIN jobs j ON e.job_id = j.job_id
JOIN departments d ON e.department_id = d.department_id;
SELECT d.department_name, COUNT(e.employee_id) AS employee_count
FROM departments d
LEFT JOIN employees e ON d.department_id = e.department_id
GROUP BY d.department_name;
SELECT e.first_name, e.last_name, e.job_id
FROM employees e
JOIN employees m ON e.manager_id = m.employee_id
WHERE e.job_id = m.job_id;
SELECT DISTINCT e.first_name, e.last_name 
FROM employees e
JOIN job_history jh ON e.employee_id = jh.employee_id;
