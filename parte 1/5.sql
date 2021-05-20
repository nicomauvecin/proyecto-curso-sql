SELECT d.dept_name AS "nombre del departamento", AVG(s.salary) AS "salario promedio"
FROM departments AS d
INNER JOIN dept_emp AS de ON d.dept_no = de.dept_no
INNER JOIN salaries AS s ON de.emp_no = s.emp_no
WHERE s.from_date >= '1998-01-01' 
AND s.from_date < '1998-12-31'
GROUP BY 1
ORDER BY 2 DESC;