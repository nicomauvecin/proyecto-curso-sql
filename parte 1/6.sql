SELECT EXTRACT (YEAR FROM e.hire_date) AS "año", COUNT(emp_no) AS "contrataciones"
FROM employees AS e
GROUP BY 1
ORDER BY 2 DESC
LIMIT 1;