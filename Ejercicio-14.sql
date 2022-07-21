
-- Creacion del procedimiento para obtener el nombre del dia de una fecha
-- Especifica la base de datos a utilizar

USE flextech;
DELIMITER //

--El formato de la fecha a ingresar es: ('2022/02/02') ya que mysql no admite el formato (%d/%m/%y) y
-- no encontre una forma de cambiarlo

CREATE PROCEDURE semana(in fecha DATE)
BEGIN

-- Esteblece el idioma de salida a Español

SET lc_time_names = 'es_ES';
SELECT DAYNAME(fecha) as Resultado;
END
//

DELIMITER ;

--Para ejecutar el procedimiento se debe escribir lo siguinte:
CALL semana('2022/02/02')

-- Query para eliminar el procedimiento
DROP PROCEDURE semana;