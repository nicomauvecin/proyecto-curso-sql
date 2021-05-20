WITH emp_engineer AS(
	SELECT emp_no, title, from_date
	FROM titles
	WHERE title = 'Engineer'
),

     emp_senior_engineer AS(
	SELECT emp_no, title, from_date
	FROM titles
	WHERE title = 'Senior Engineer'
)

SELECT ROUND(AVG(ese.from_date - ee.from_date)) AS "promedio de días"
FROM emp_engineer AS ee
INNER JOIN emp_senior_engineer AS ese ON ee.emp_no = ese.emp_no;
