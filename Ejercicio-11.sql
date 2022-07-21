--Especifica la base de datos a utilizar
USE flextech;

-- Query para la creación de las tablas
CREATE TABLE flextech.empleados(
  id INT NULL AUTO_INCREMENT,
  idNac VARCHAR(1) NOT NULL,
  Name VARCHAR(10) NOT NULL,
  Age INT(2) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE flextech.nacionalidad(
  id INT NULL AUTO_INCREMENT,
  Descendencia VARCHAR(20) NOT NULL,
  PRIMARY KEY (id)
);

-- Inserción de los datos en las tablas
INSERT INTO
  empleados(idNac, Name, Age)
VALUES
  (1, 'Bob', 21),
  (1, 'Sam', 19),
  (2, 'Jill', 18),
  (3, 'Jim', 21),
  (4, 'Sally', 19),
  (2, 'Jess', 20),
  (3, 'Will', 21);

INSERT INTO
  nacionalidad(Descendencia )
VALUES
  ('Argentino'),
  ('Italiano'),
  ('Español'),
  ('Alemán');

-- Query para obtener los datos con su respectiva nacionalidad
SELECT
  em.id,
  nac.Descendencia,
  em.Name,
  em.Age
FROM
  empleados as em
  INNER JOIN nacionalidad as nac on em.idNac = nac.id;

-- Query para eliminar las tabla
DROP TABLE flextech.empleados;
DROP TABLE flextech.nacionalidad;