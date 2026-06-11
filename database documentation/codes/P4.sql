SELECT cursos.nombre, AVG(notas.nota) AS promedio
FROM notas
JOIN inscripciones ON notas.id_inscripcion = inscripciones.id
JOIN cursos ON inscripciones.id_curso = cursos.id
GROUP BY cursos.nombre;