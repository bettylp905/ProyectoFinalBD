SELECT cursos.nombre, COUNT(inscripciones.id_estudiante) AS total_alumnos
FROM cursos
join inscripciones on cursos.id = inscripciones.id_curso
group by cursos.nombre;