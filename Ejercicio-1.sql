--Especifica la base de datos a utilizar
USE flextech;

-- Query para la creación de la tabla

CREATE TABLE flextech.numero_opuesto (
  id INT NULL AUTO_INCREMENT,
  Value INT(2) NOT NULL,
  PRIMARY KEY (`id`)
);

-- Inserción de datos en la tabla

INSERT INTO
  numero_opuesto (Value)
VALUES
  (-56),
  (76),
  (-84),
  (96),
  (-47);


-- Query para obtener el valor opuesto de los datos

SELECT -Value as Value from numero_opuesto;

-- Query para eliminar la tabla

DROP TABLE flextech.numero_opuesto;