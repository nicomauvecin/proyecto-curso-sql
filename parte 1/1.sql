-- En toda la historia de la empresa, ¿han habido más colaboradores hombres o mujeres?

SELECT gender, COUNT(*) 
FROM employees
GROUP BY gender;