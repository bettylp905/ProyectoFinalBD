CREATE PROCEDURE sp_reporte_rendimiento()
BEGIN 
SELECT e.id,
   CONCAT(E.NOMBRE,  ' ',e.apellido)
    as estudiante,
    COUNT(DISTINCT i.id_curso)as
    cursos_inscritos,
    ROUND(AVG(n.nota),2)as promedio,
    CASE
       WHEN AVG(n.nota) => 9 THEN 'MB'
       WHEN AVG(n.nota) => 8 THEN 'B'
       WHEN AVG(n.nota) => 6 THEN 'S'
       ELSE 'NA'
    END as categoria
FROM estudiantes e 
LEFT JOIN inscripciones i ON e.id = i.id_estudiante
LEFT JOIN notas n ON i.id = n.id_inscripcion
GROUP BY e.id, e.nombre, e.apellido
ORDER BY promedio DESC;

END\\