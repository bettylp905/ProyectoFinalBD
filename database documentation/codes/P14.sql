SELECT e.nombre, e.apellido, COUNT(i.id_curso) AS cursos
FROM estudiantes e
JOIN inscripciones i ON e.id = i.id_estudiante
GROUP BY e.id
HAVING cursos > 1;
