--Especifica la base de datos a utilizar
USE flextech;

-- Query para la creación de la tabla

CREATE TABLE flextech.productos_mas_vendidos (
  id INT NULL AUTO_INCREMENT,
  Name VARCHAR(12) NOT NULL,
  Amount_Sold INT(2) NOT NULL,
  PRIMARY KEY (id)
);

-- Inserción de datos en la tabla

INSERT INTO
  productos_mas_vendidos(Name,Amount_Sold)
VALUES
  ('Cup', 11),
  ('Saucer', 22),
  ('Plate', 46),
  ('Fork', 34),
  ('Spoon', 45),
  ('Knife', 78),
  ('Mug', 23),
  ('Glass', 64),
  ('Tumbler', 24);

-- Query para obtener los productos mas vendidos
SELECT Name from productos_mas_vendidos ORDER BY Amount_Sold DESC LIMIT 5;

-- Query para eliminar la tabla
DROP TABLE flextech.productos_mas_vendidos;