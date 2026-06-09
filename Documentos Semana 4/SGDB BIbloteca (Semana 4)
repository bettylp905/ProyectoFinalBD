-- ============================================
-- CREACIÓN DE BASE DE DATOS BIBLIOTECA
-- ============================================

CREATE DATABASE IF NOT EXISTS bibloteca;
USE bibloteca;

-- ============================================
-- TABLA: AUTOR
-- ============================================
CREATE TABLE autor(
    id_autor INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);

-- ============================================
-- TABLA: LIBRO
-- ============================================
CREATE TABLE libro(
    id_libro INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    titulo VARCHAR(200) NOT NULL,
    año_publicacion YEAR NOT NULL,
    isbn VARCHAR(20) NOT NULL UNIQUE
);

-- ============================================
-- TABLA: CATEGORIA
-- ============================================
CREATE TABLE categoria(
    id_categoria INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion VARCHAR(255)
);

-- ============================================
-- TABLA INTERMEDIA: LIBRO_AUTOR
-- ============================================
CREATE TABLE libro_autor(
    id_libro INT NOT NULL,
    id_autor INT NOT NULL,

    PRIMARY KEY (id_libro, id_autor),

    FOREIGN KEY (id_libro) 
    REFERENCES libro(id_libro)
    ON DELETE CASCADE,

    FOREIGN KEY (id_autor)
    REFERENCES autor(id_autor)
    ON DELETE CASCADE
);

-- ============================================
-- TABLA INTERMEDIA: LIBRO_CATEGORIA
-- ============================================
CREATE TABLE libro_categoria(
    id_libro INT NOT NULL,
    id_categoria INT NOT NULL,

    PRIMARY KEY (id_libro, id_categoria),

    FOREIGN KEY (id_libro)
    REFERENCES libro(id_libro)
    ON DELETE CASCADE,

    FOREIGN KEY (id_categoria)
    REFERENCES categoria(id_categoria)
    ON DELETE CASCADE
);

-- ============================================
-- TABLA: EJEMPLAR
-- ============================================
CREATE TABLE ejemplar(
    id_ejemplar INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    id_libro INT NOT NULL,
    estado ENUM('disponible', 'prestado', 'reservado') DEFAULT 'disponible',
    
    FOREIGN KEY (id_libro)
    REFERENCES libro(id_libro)
    ON DELETE CASCADE
);

-- ============================================
-- TABLA: USUARIO
-- ============================================
CREATE TABLE usuario(
    id_usuario INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    correo VARCHAR(100) NOT NULL UNIQUE,
    matricula VARCHAR(30) NOT NULL UNIQUE,
    tipo ENUM('estudiante', 'profesor', 'empleado') DEFAULT 'estudiante',
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- ============================================
-- TABLA: PRESTAMO
-- ============================================
CREATE TABLE prestamo(
    id_prestamo INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    id_usuario INT NOT NULL,
    id_ejemplar INT NOT NULL,
    fecha_salida DATE NOT NULL,
    fecha_devolucion_esperada DATE NOT NULL,
    fecha_devolucion_real DATE,

    FOREIGN KEY (id_usuario)
    REFERENCES usuario(id_usuario)
    ON DELETE CASCADE,
    
    FOREIGN KEY (id_ejemplar)
    REFERENCES ejemplar(id_ejemplar)
    ON DELETE CASCADE
);

-- ============================================
-- TABLA: MULTA
-- ============================================
CREATE TABLE multa(
    id_multa INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    id_prestamo INT NOT NULL UNIQUE,
    monto DECIMAL(10,2) NOT NULL,
    pagada BOOLEAN DEFAULT FALSE,
    fecha_multa TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (id_prestamo)
    REFERENCES prestamo(id_prestamo)
    ON DELETE CASCADE
);

-- ============================================
-- ÍNDICES PARA OPTIMIZACIÓN
-- ============================================
CREATE INDEX idx_libro_isbn ON libro(isbn);
CREATE INDEX idx_usuario_matricula ON usuario(matricula);
CREATE INDEX idx_usuario_correo ON usuario(correo);
CREATE INDEX idx_prestamo_usuario ON prestamo(id_usuario);
CREATE INDEX idx_prestamo_ejemplar ON prestamo(id_ejemplar);
CREATE INDEX idx_ejemplar_libro ON ejemplar(id_libro);

-- ============================================
-- FIN DEL SCRIPT
-- ============================================
