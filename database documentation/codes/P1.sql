SELECT count(*) AS total_alumnos
FROM inscripciones
JOIN cursos on inscripciones.id_curso = cursos.id
where cursos.nombre ='Álgebra'