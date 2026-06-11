SELECT cursos.nombre
FROM cursos
JOIN horarios ON cursos.id = horarios.id_curso
WHERE horarios.dia_semana = 'Lunes';