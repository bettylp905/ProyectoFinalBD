CREATE PROCEDURE sp_promedio_estudiantes(
    IN p_estudiante INT,
    OUT p_promedio DECIMAL(4,2)

)
BEGIN
SELECT AVG(n.nota)
INTO p_promedio
FROM notas n
JOIN inscripciones i
ON n.id_inscripcion = i.id
WHERE i.id_estudiante = p_estudiante;
END //