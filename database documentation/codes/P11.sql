SELECT e.nombre, e.apellido, c.nombre AS curso, n.nota
FROM notas n
JOIN inscripciones i ON n.id_inscripcion = i.id
JOIN estudiantes e ON i.id_estudiantes = e.id
JOIN cursos c ON i.id_curso = c.id
ORDER BY n.nota DESC
LIMIT 1;