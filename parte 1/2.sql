-- Crear un reporte con el salario mínimo y salario máximo registrado en la historia de la
-- empresa por tipo de empleo (title)

SELECT t.title AS "Titulo", MAX(s.salary) AS "Salario Máximo" , MIN(s.salary) AS "Salario Mínimo"
FROM titles AS t
INNER JOIN salaries AS s ON t.emp_no = s.emp_no
GROUP BY title;