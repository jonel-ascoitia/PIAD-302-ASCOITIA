--Este es un diseño para organizar mi vida diaria. Es una herramienta simple que me ayuda a registrar y gestionar mis tareas diarias

-- Primero diseñé un procedimiento almacenado llamado RegistrarTarea
--Este procedimiento me permite agregar tareas nuevas de forma rápida
--Solo le paso la descripción,fecha,estado, y el procedimiento las guarda en la tabla.
CREATE PROCEDURE RegistrarTarea
    @Descripcion VARCHAR(100),
    @Fecha DATE,
    @Estado VARCHAR(20)
AS
BEGIN
    INSERT INTO TareasDiarias (Descripcion, Fecha, Estado)
    VALUES (@Descripcion, @Fecha, @Estado);
END;

-- segundo creé una tabla llamada TareasDiarias para almacenar mis actividades diarias
--la tabla tiene columnas para el ID, Descripcion,Fecha,Estado
CREATE TABLE TareasDiarias (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    Descripcion VARCHAR(100),
    Fecha DATE,
    Estado VARCHAR(20)
);

--Para usar el procedimiento, simplemente ejecuto un comando como este
EXEC RegistrarTarea 'Hacer ejercicio', '2025-09-03', 'Pendiente';

--este comando es para seleccionar mis trabajos pendientes
SELECT * FROM TareasDiarias;


--este dato nos permite borrar la fila que deseamos colocando el numero ID
DELETE FROM TareasDiarias WHERE ID = 1;
