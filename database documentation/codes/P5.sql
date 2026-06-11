SELECT estudiantes.nombre, estudiantes.apellido, notas.nota
FROM estudiantes
JOIN inscripciones ON estudiantes.id = inscripciones.id_estudiante
JOIN notas ON inscripciones.id = notas.id_inscripcion
WHERE notas.nota > 8.0;