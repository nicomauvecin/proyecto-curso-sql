SELECT CONCAT(e.first_name, ' ', e.last_name) AS "empleado",
	MAX(s.salary) AS "salario"
FROM employees AS e
INNER JOIN salaries AS s ON e.emp_no = s.emp_no
WHERE salary BETWEEN '24000' AND '50000'
GROUP BY empleado;