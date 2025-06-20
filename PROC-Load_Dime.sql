
/* EJEMPLO */

--CREATE PROCEDURE [dbo].[Load_DimEstudiante]
--AS
--BEGIN
--    SET NOCOUNT ON;
--    SET XACT_ABORT ON;

--    DECLARE @EndOfTime datetime = '9999-12-31';

--    BEGIN TRAN;

--    -- Inserta una fila por defecto si la tabla está vacía
--    IF NOT EXISTS (SELECT * FROM dw_eduoptima.DimEstudiante)
--    BEGIN
--        INSERT INTO dw_eduoptima.DimEstudiante
--               ([CodigoEstudiante], [NombresEstudiante], [ApellidosEstudiante], [Sexo], [FechaNacimiento])
--        VALUES
--               ('N/A', 'N/A', 'N/A', 'N/A',  '9999-12-31');
--    END

--    -- Actualiza vigencia de pacientes (si se hace control temporal)
--    -- Si no hay columna para hacer JOIN, esta parte podría omitirse o ajustarse

--    -- Insertar desde staging
--    INSERT INTO dw_eduoptima.DimEstudiante
--           ([CodigoEstudiante], [NombresEstudiante], [ApellidosEstudiante], [Sexo],[FechaNacimiento])
--    SELECT 
--           se.[CodigoEstudiante], se.[NombresEstudiantes], se.[ApellidosEstudiates], se.[Sexo],[FechaNacimiento]
--    FROM Staging_Estudiante se;

--    COMMIT;
--END;


CREATE PROCEDURE [dbo].[Load_Empresa]
AS
BEGIN
    SET NOCOUNT ON;
    SET XACT_ABORT ON;

    BEGIN TRAN;

    -- Insertar registro por defecto si la tabla está vacía
    IF NOT EXISTS (SELECT * FROM [dbo].[Dimension_Empresa])
    BEGIN
        INSERT INTO [dbo].[Dimension_Empresa]
               ([ID_Empresa], [Codigo], [Nombre_Empresa], [Direccion], [Telefono], [Correo])
        VALUES
               (-1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A');
    END

    -- Insertar desde tabla Staging
    INSERT INTO [dbo].[Dimension_Empresa]
           ([ID_Empresa], [Codigo], [Nombre_Empresa], [Direccion], [Telefono], [Correo])
    SELECT 
           se.[ID_Empresa], se.[Codigo], se.[Nombre_Empresa], se.[Direccion], se.[Telefono], se.[Correo]
    FROM Staging_Empresa se;

    COMMIT;
END;
GO




CREATE PROCEDURE [dbo].[Load_DimHabilidades]
AS
BEGIN
    SET NOCOUNT ON;
    SET XACT_ABORT ON;

    BEGIN TRAN;

    -- Insertar registro por defecto si la tabla está vacía
    IF NOT EXISTS (SELECT * FROM [dbo].[Dimension_Habilidades])
    BEGIN
        INSERT INTO [dbo].[Dimension_Habilidades]
               ([ID_Habilidade], [Codigo], [Nombre_Habilidad])
        VALUES
               (-1, 'N/A', 'N/A');_Dimension
    END

    -- Insertar desde la tabla staging
    INSERT INTO [dbo].[Dimension_Habilidades]
           ([ID_Habilidade], [Codigo], [Nombre_Habilidad])
    SELECT 
           sh.[ID_Habilidade], sh.[Codigo], sh.[Nombre_Habilidad]
    FROM Staging_Habilidades sh;

    COMMIT;
END;
GO




CREATE PROCEDURE [dbo].[Load_DimMunicipio]
AS
BEGIN
    SET NOCOUNT ON;
    SET XACT_ABORT ON;

    BEGIN TRAN;

    -- Insertar registro por defecto si la tabla está vacía
    IF NOT EXISTS (SELECT * FROM [dbo].[Dimension_Municipio])
    BEGIN
        INSERT INTO [dbo].[Dimension_Municipio]
               ([id], [Codigo], [Nombre])
        VALUES
               (-1, 'N/A', 'N/A');
    END

    -- Insertar registros desde la tabla de staging
    INSERT INTO [dbo].[Dimension_Municipio]
           ([id], [Codigo], [Nombre])
    SELECT 
           sm.[id], sm.[Codigo], sm.[Nombre]
    FROM Staging_Municipio sm;

    COMMIT;
END;
GO


CREATE PROCEDURE [dbo].[Load_DimPlaza]
AS
BEGIN
    SET NOCOUNT ON;
    SET XACT_ABORT ON;

    BEGIN TRAN;

    -- Insertar registro por defecto si la tabla está vacía
    IF NOT EXISTS (SELECT * FROM [dbo].[Dimension_Plaza])
    BEGIN
        INSERT INTO [dbo].[Dimension_Plaza]
               ([ID_Plaza], [Codigo], [Salario], [Descripcion])
        VALUES
               (-1, 'N/A', 0.00, 'N/A');
    END

    -- Insertar datos desde staging
    INSERT INTO [dbo].[Dimension_Plaza]
           ([ID_Plaza], [Codigo], [Salario], [Descripcion])
    SELECT 
           sp.[ID_Plaza], sp.[Codigo], sp.[Salario], sp.[Descripcion]
    FROM Staging_Plaza sp;

    COMMIT;
END;
GO


CREATE PROCEDURE [dbo].[Load_DimPostulante]
AS
BEGIN
    SET NOCOUNT ON;
    SET XACT_ABORT ON;

    BEGIN TRAN;

    -- Insertar registro por defecto si la tabla está vacía
    IF NOT EXISTS (SELECT * FROM [dbo].[Dimension_Postulante])
    BEGIN
        INSERT INTO [dbo].[Dimension_Postulante]
               ([ID_Postulante], [Cedula], [Nombre_Postulante], [Apellidos], [Sexo],
                [Correo], [Telefono], [Fecha_Nacimiento], [Direccion], [Experiencia_Laboral])
        VALUES
               (-1, 'N/A', 'N/A', 'N/A', 'N/A',
                'N/A', 'N/A', 'N/A', 'N/A', 'N/A');
    END

    -- Insertar datos desde la tabla staging
    INSERT INTO [dbo].[Dimension_Postulante]
           ([ID_Postulante], [Cedula], [Nombre_Postulante], [Apellidos], [Sexo],
            [Correo], [Telefono], [Fecha_Nacimiento], [Direccion], [Experiencia_Laboral])
    SELECT 
           sp.[ID_Postulante], sp.[Cedula], sp.[Nombre_Postulante], sp.Apellido, sp.[Sexo],
           sp.[Correo], sp.[Telefono], sp.[Fecha_Nacimiento], sp.[Direccion], sp.[Experiencia_Laboral]
    FROM Staging_Postulante sp;

    COMMIT;
END;
GO

