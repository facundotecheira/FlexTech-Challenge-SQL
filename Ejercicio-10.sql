--Especifica la base de datos a utilizar
USE flextech;

-- Query para la creación de la tabla

CREATE TABLE flextech.sumar_edades(
  id INT NULL AUTO_INCREMENT,
  idNac VARCHAR(1) NOT NULL,
  Name VARCHAR(12) NOT NULL,
  Age INT(2) NOT NULL,
  PRIMARY KEY (id)
);

-- Inserción de datos en la tabla

INSERT INTO
  sumar_edades(Name, Age)
VALUES
  ('Bob', 21),
  ('Sam', 19),
  ('Jill', 18),
  ('Jim', 21),
  ('Sally', 19),
  ('Jess', 20),
  ('Will', 21);

-- Query para obtener la suma total del campo Age
SELECT SUM(Age) as Total from sumar_edades;

-- Query para eliminar la tabla
DROP TABLE flextech.sumar_edades;