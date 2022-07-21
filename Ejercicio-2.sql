--Especifica la base de datos a utilizar
USE flextech;

-- Query para la creación de la tabla

CREATE TABLE flextech.divisiones_2021 (
  Division_id VARCHAR(1) NOT NULL,
  Year VARCHAR(4) NOT NULL,
  Revenue VARCHAR(2) NOT NULL
);

-- Inserción de datos en la tabla

INSERT INTO
  divisiones_2021 (Division_id, Year, Revenue)
VALUES
  (1, 2018, 60),
  (1, 2021, 40),
  (1, 2020, 70),
  (2, 2021, -10),
  (3, 2018, 20),
  (3, 2016, 40),
  (4, 2021, 50);


-- Query para obtener las divisiones del año 2021 que hayan obtenido ingresos positivos

SELECT Division_id from divisiones_2021 where Year = 2021 AND Revenue>0;

-- Query para eliminar la tabla
DROP TABLE flextech.divisiones_2021;