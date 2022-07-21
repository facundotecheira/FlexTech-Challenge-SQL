--Especifica la base de datos a utilizar
USE flextech;

-- Query para la creación de la tabla

CREATE TABLE flextech.cadena_de_saludo (
  id INT NULL AUTO_INCREMENT,
  Name VARCHAR(12) NOT NULL,
  PRIMARY KEY (id)
);

-- Inserción de datos en la tabla

INSERT INTO
  cadena_de_saludo(Name)
VALUES
  ('Bob'),
  ('Sam'),
  ('Jill'),
  ('Jim'),
  ('Sally'),
  ('Jess'),
  ('Will');


-- Query para obtener un saludo
  SELECT CONCAT('¡Hola!',' ',Name,' ','¿Cómo estás hoy?') as Saludo from cadena_de_saludo;

-- Query para eliminar la tabla
DROP TABLE flextech.cadena_de_saludo;