--Especifica la base de datos a utilizar
USE flextech;

-- Query para la creación de las tablas
CREATE TABLE flextech.pasaportes(
  id INT NULL AUTO_INCREMENT,
  idNac VARCHAR(1) NOT NULL,
  Name VARCHAR(12) NOT NULL,
  Age INT(2) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE flextech.fecha_vencimiento(
  id VARCHAR(1) NOT NULL,
  Fvto DATE,
  PRIMARY KEY (id)
);

-- Inserción de datos en las tablas
INSERT INTO
  pasaportes(idNac, Name, Age)
VALUES
  (1, 'Bob', 21),
  (1, 'Sam', 19),
  (2, 'Jill', 18),
  (3, 'Jim', 21),
  (4, 'Sally', 19),
  (2, 'Jess', 20),
  (3, 'Will', 21);

INSERT INTO
  fecha_vencimiento(id, Fvto)
VALUES
  (1, '23/10/1'),
  (2, '25/05/22'),
  (5, '23/1/22'),
  (6, '28/6/15');

-- Query para obtener las fechas de vencimiento de los pasaportes
SELECT
  pas.id,
  pas.Name,
  pas.Age,
CASE
    WHEN pas.id = fec.id THEN DATE_FORMAT(fec.Fvto, '%d/%m/%y')
    ELSE ''
  END as Fvto
from
  pasaportes as pas
  LEFT JOIN fecha_vencimiento as fec on pas.id = fec.id;


-- Query para eliminar las tablas
DROP TABLE flextech.pasaportes;
DROP TABLE flextech.fecha_vencimiento;
