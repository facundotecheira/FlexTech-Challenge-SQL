--Especifica la base de datos a utilizar
USE flextech;

-- Query para la creación de la tabla

CREATE TABLE flextech.siglo_del_año (
  id INT NULL AUTO_INCREMENT,
  Year INT(4) NOT NULL,
  PRIMARY KEY (id)
);

-- Inserción de datos en la tabla

INSERT INTO
  siglo_del_año (Year)
VALUES
  (1776),
  (2001),
  (1643),
  (1865),
  (1969);

-- Query para obtener el siglo del año

SELECT Year, SUBSTRING(Year,1,2)+1 as Siglo from siglo_del_año;

-- Query para eliminar la tabla
DROP TABLE flextech.siglo_del_año;

