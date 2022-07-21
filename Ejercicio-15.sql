--Especifica la base de datos a utilizar
USE flextech;

-- Query para la creación de las tablas
CREATE TABLE flextech.borrar_persona(
  id INT NULL AUTO_INCREMENT,
  idNac VARCHAR(1) NOT NULL,
  Name VARCHAR(12) NOT NULL,
  Age INT(2) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE flextech.fecha_vencimientos(
  id VARCHAR(1) NOT NULL,
  Fvto DATE,
  PRIMARY KEY (id)
);

-- Inserción de datos en las tablas
INSERT INTO
  borrar_persona(idNac, Name, Age)
VALUES
  (1, 'Bob', 21),
  (1, 'Sam', 19),
  (2, 'Jill', 18),
  (3, 'Jim', 21),
  (4, 'Sally', 19),
  (2, 'Jess', 20),
  (3, 'Will', 21);

INSERT INTO
  fecha_vencimientos(id, Fvto)
VALUES
  (1, '23/10/1'),
  (2, '25/05/22'),
  (5, '23/1/22'),
  (6, '28/6/15');

--Creacion del procedimiento para eliminar datos de la tabla personas y la tabla fecha

DELIMITER //

CREATE PROCEDURE BorrarPersona(in id int)
BEGIN
DELETE borrar_persona,
fecha_vencimientos
FROM
  borrar_persona
  INNER JOIN fecha_vencimientos on borrar_persona.id = fecha_vencimientos.id
where
  borrar_persona.id = id;
END
//

DELIMITER ;

-- No logre hacer que muestre un mensaje si la query fue exitosa

--Para ejecutar el procedimiento se debe escribir lo siguinte:
CALL borrarPersona(1)

-- Query para eliminar las tablas
DROP TABLE flextech.borrar_persona;
DROP TABLE flextech.fecha_vencimientos;

-- Query para eliminar el procedimiento
DROP PROCEDURE borrarPersona;



