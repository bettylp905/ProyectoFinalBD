SELECT d.nombre AS departamento, COUNT(p.id) AS cantidad
FROM departamentos d
LEFT JOIN profesores p ON d.id = p.id_departamento
GROUP BY d.id;