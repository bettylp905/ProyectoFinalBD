SELECT c.nombre, AVG(n.nota) AS promedio
FROM cursos c
JOIN inscripciones i ON c.id = i.id_curso
JOIN notas n ON i.id = n.id_inscripcion
GROUP BY c.id
ORDER BY promedio ASC
LIMIT 1;