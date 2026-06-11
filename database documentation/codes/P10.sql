SELECT cursos.nombre AS curso, aulas.nombre AS aula, horarios.dia_semana, horarios.hora_inicio
FROM cursos
JOIN horarios ON cursos.id = horarios.id_curso
JOIN aulas ON horarios.id_aula = aulas.id;