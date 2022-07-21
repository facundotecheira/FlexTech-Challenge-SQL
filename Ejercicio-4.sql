--Especifica la base de datos a utilizar
USE flextech;

-- Query para la creación de la tabla

CREATE TABLE flextech.par_impar (
  id INT NULL AUTO_INCREMENT,
  Value INT(2) NOT NULL,
  PRIMARY KEY (id)
);

-- Inserción de datos en la tabla

INSERT INTO
  par_impar (Value)
VALUES
  (4),
  (11),
  (57),
  (24),
  (57);


-- Query para obtener la paridad de los valores
select CASE WHEN MOD (Value, 2) = 0 THEN 'par' ELSE 'impar' END as paridad from par_impar;

-- Query para eliminar la tabla
DROP TABLE flextech.par_impar;