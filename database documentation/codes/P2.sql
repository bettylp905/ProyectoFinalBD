SELECT cursos.nombre 
FROM cursos
JOIN profesores ON cursos.id_profesor = profesores.id
WHERE profesores.apellido = 'Martínez';