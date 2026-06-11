select  cursos.nombre, COUNT(inscripciones.id) AS total_inscripciones
FROM cursos
JOIN inscripciones ON cursos.id = inscripciones.id_curso
GROUP BY cursos.nombre
HAVING COUNT(inscripciones.id) > 1;
