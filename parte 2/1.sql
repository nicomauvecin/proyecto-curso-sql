SELECT dept_name AS departamento, SUM(titulos) AS cambios
FROM (
	SELECT d.dept_name, e.emp_no, COUNT(t.title) AS titulos
	FROM departments AS d
	INNER JOIN dept_emp AS de ON d.dept_no = de.dept_no
	INNER JOIN employees AS e ON de.emp_no = e.emp_no
	INNER JOIN titles AS t ON e.emp_no = t.emp_no
	GROUP BY d.dept_name, e.emp_no
	HAVING COUNT(t.title) > 1
) AS dept_emp_title
GROUP BY departamento
ORDER BY cambios DESC;