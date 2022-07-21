--Especifica la base de datos a utilizar
USE flextech;
-- Query para la creación de la tabla

CREATE TABLE flextech.pasaporte (
  id INT NULL AUTO_INCREMENT,
  Name VARCHAR(20) NOT NULL,
  Country VARCHAR(20) NOT NULL,
  PRIMARY KEY (id)
);

-- Inserción de datos en la tabla

INSERT INTO
  pasaporte(Name,Country)
VALUES
  ('Bob Smith', 'United States'),
  ('Jim Jones', 'China'),
  ('Sam White', 'Japan'),
  ('Jess Black', 'Canada'),
  ('Will Wilson', 'Germany'),
  ('Wilson Scott', 'England'),
  ('Scott Daniels', 'France'),
  ('Daniel Jackson', 'Canada'),
  ('Jack Johnson', 'United States');

-- Query para obtener todos los nombres de las personas que necesiten pasaporte
SELECT Name FROM pasaporte where Country <> 'United States' AND Country <> 'Canada';

-- Query para eliminar la tabla
DROP TABLE flextech.pasaporte;