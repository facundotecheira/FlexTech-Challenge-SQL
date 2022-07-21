--Especifica la base de datos a utilizar
USE flextech;

-- Query para la creación de la tabla

CREATE TABLE flextech.agrupar_por_edad (
  id INT NULL AUTO_INCREMENT,
  Name VARCHAR(12) NOT NULL,
  Age INT(2) NOT NULL,
  PRIMARY KEY (id)
);

-- Inserción de datos en la tabla

INSERT INTO
  agrupar_por_edad(Name, Age)
VALUES
  ('Bob', 21),
  ('Sam', 19),
  ('Jill', 18),
  ('Jim', 21),
  ('Sally', 19),
  ('Jess', 20),
  ('Will', 21);

-- Query para obtener los datos agrupados por 'Age'
SELECT Age, COUNT(Age) as Count from agrupar_por_edad GROUP BY Age;

-- Query para eliminar la tabla
DROP TABLE flextech.agrupar_por_edad;