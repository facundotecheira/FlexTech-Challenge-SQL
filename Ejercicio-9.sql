--Especifica la base de datos a utilizar
USE flextech;

-- Query para la creación de la tabla

CREATE TABLE flextech.quitar_repetidos (
  id INT NULL AUTO_INCREMENT,
  Name VARCHAR(12) NOT NULL,
  Age INT(2) NOT NULL,
  PRIMARY KEY (id)
);

-- Inserción de datos en la tabla

INSERT INTO
  quitar_repetidos(Name, Age)
VALUES
  ('Bob', 21),
  ('Sam', 19),
  ('Jill', 18),
  ('Jim', 21),
  ('Sally', 19),
  ('Jess', 20),
  ('Will', 21);

-- Query para obtener los datos sin repetir
SELECT DISTINCT Age from quitar_repetidos;

-- Query para eliminar la tabla
DROP TABLE flextech.quitar_repetidos;