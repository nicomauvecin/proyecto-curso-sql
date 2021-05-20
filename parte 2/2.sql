WITH tabla_managers AS (
	SELECT d.dept_name AS departamento, e.last_name AS nombre, s.salary AS salario
	FROM departments AS d
	INNER JOIN dept_manager AS dm ON d.dept_no = dm.dept_no
	INNER JOIN employees AS e ON dm.emp_no = e.emp_no
	INNER JOIN salaries AS s ON e.emp_no = s.emp_no
	GROUP BY 1,2,3
)

SELECT departamento, nombre, MAX(salario) AS salario
FROM tabla_managers AS tm
GROUP BY 1,2
ORDER BY salario DESC
LIMIT 5;