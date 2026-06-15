CREATE PROCEDURE sp_promedio_estidiante(IN p_id_estudiante INT,
                         OUT p_promedio DECIMAL (5,2))
BEGIN 
    SELECT AVG(n.nota)INTO p_promedio FROM notas n 
    INNER JOIN inscripciones i ON n.id_inscripcion = i.id WHERE i.
    id_estudiante = p_id_estudiante;
END\\

CALL sp_promedio_estudiante(1, @prom);
SELECT @prom as promedio;
