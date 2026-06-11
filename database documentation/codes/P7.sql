SELECT profesores.nombre, profesores.apellido
FROM profesores
JOIN departamentos ON profesores.id_departamento = departamentos.id
WHERE departamentos.nombre = 'Ingeniería';