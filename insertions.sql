--scrpt par ala insrcion de algunos registros en el mdodelo de datos

USE bibloteca;
INSERT INTO autor (nombre) VALUES ('Gabriel Garcia Marquez'), ('Issac Newton');

INSERT INTO categoria(nombre) VALUES ('Cien Años de Soledad',1967,'123456789'),('Principia Mathematica',1687,'0987654321');

INSERT INTO categoria(nombre) VALUES ('Ciencias'),('Humanidades'),('Ingenieria');

INSERT INTO libro(nombre) VALUES ('Cien Años de Soledad',1967,'123456789'),('Principia Mathematica',1687,'0987654321');

INSERT INTO libro_autor VALUES (1,1),(2,2);
INSERT INTO libro_categoria VALUES (1,1),(2,1);
INSERT INTO ejemplar(id_libro,estado) VALUES (1),(2),(3);
INSERT INTO usuario(nombre,correo,matricula,tipo) VALUES
('Juan Perez','juan.perez@cua.uam.mx.','12344','estudiante'),
('Ana Lopez','ana.lopez@cua.uam.mx.','44321','profeso');

INSERT INTO prestamo(id_usuario,id_ejemplar,fecha_salida,fecha_devolucion_esperada) VALUES
(1,
1,
CURDATE(),
DATE_ADD(CURDATE(), 
INTERVAL 7 DAY));