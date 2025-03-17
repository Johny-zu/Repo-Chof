CREATE DATABASE prueba_backup;
USE prueba_backup;

CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    email VARCHAR(50) UNIQUE NOT NULL
);

INSERT INTO clientes (nombre, email) VALUES 
('Juan Pérez', 'juan@example.com'),
('María López', 'maria@example.com');
