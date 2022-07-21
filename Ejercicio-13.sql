--Especifica la base de datos a utilizar
USE flextech;

-- Query para la creación de las tablas
CREATE TABLE flextech.cuenta(
  id INT NULL AUTO_INCREMENT,
  Name VARCHAR(12) NOT NULL,
  Age INT(2) NOT NULL,
  PRIMARY KEY (id)
);

-- Inserción de datos en la tabla
INSERT INTO
  cuenta( Name, Age)
VALUES
  ('Bob', 21),
  ('Sam', 19),
  ('Jill', 18),
  ('Jim', 21),
  ('Sally', 19),
  ('Jess', 20),
  ('Will', 21);

--Creacion del procedimiento almacenado que recibe por parametro la edad y
-- retorna la cantidad de veces que se repita
DELIMITER //

CREATE PROCEDURE cantidad(in age int)
BEGIN
SELECT COUNT(Age) as Resultado from cuenta WHERE cuenta.Age = age;
END
//

DELIMITER ;

--Para ejecutar el procedimiento se debe escribir lo siguinte:
CALL cantidad (21);

-- Query para eliminar la tabla
DROP TABLE flextech.cuenta;

-- Query para eliminar el procedimiento
DROP PROCEDURE cantidad;

