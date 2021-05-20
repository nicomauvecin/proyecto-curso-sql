SELECT e.first_name AS nombre, e.last_name AS apellido, MAX(s.salary) AS salario
FROM employees AS e
INNER JOIN salaries AS s ON e.emp_no = s.emp_no
INNER JOIN dept_manager AS dm ON e.emp_no = dm.emp_no
GROUP BY nombre, apellido
ORDER BY salario DESC
LIMIT 5;