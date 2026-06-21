USE escuela;
DROP PROCEDURE IF EXISTS sp_inscribir_seguro;
DELIMITER //

CREATE PROCEDURE sp_inscribir_seguro (
    IN p_estudiante INT,
<<<<<<< HEAD
    IN p_curso INT
=======
    OUT p_curso INT
>>>>>>> 586bffb0419eb1e9a490198e10f8924369d5429b
)
BEGIN
    IF EXISTS(
      SELECT 1
      FROM inscripciones
      WHERE id_estudiante = p_estudiante
      AND id_curso=p_curso
	) THEN
	  SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT ='Ya inscrito';
	ELSE 
	  INSERT INTO inscripciones(
         id_estudiante, id_curso,
         fecha_inscripcion)
	   VALUES(
       p_estudiante, p_curso, CURDATE());
	END IF;
END //

DELIMITER ;