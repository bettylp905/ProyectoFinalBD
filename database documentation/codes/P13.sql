SELECT nombre
FROM cursos
WHERE id NOT IN (SELECT id_curso FROM inscripciones);