CREATE DATABASE DW_NextHire;
GO

USE DW_NextHire;
GO

-- ========================
-- TABLAS DIMENSIÓN
-- ========================

CREATE TABLE Dimension_Tiempo (
    ID_Fecha INT PRIMARY KEY,
    Fecha DATE,
    Dia INT,
    Mes INT,
    Nombre_Mes VARCHAR(20),
    Año INT,
    Nombre_Dia VARCHAR(20)
);

CREATE TABLE Dimension_Municipio (
    [id] INT PRIMARY KEY,
	[Codigo] NVARCHAR(50),
    Nombre VARCHAR(100)
);

CREATE TABLE Dimension_Habilidades (
    ID_Habilidade INT PRIMARY KEY,
	[Codigo] NVARCHAR(20),
    Nombre_Habilidad VARCHAR(100)
);

CREATE TABLE Dimension_Empresa (
    ID_Empresa INT PRIMARY KEY,
	[Codigo] NVARCHAR(50),
    Nombre_Empresa VARCHAR(100),
    Direccion VARCHAR(200),
    Telefono VARCHAR(16),
    Correo VARCHAR(100)
);

CREATE TABLE Dimension_Plaza (
    ID_Plaza INT PRIMARY KEY,
	[Codigo] NVARCHAR(60),
    Salario DECIMAL(10,2),
    Descripcion VARCHAR(100)
);

CREATE TABLE Dimension_Postulante (
    ID_Postulante INT PRIMARY KEY,
    Cedula VARCHAR(25),
    Nombre_Postulante VARCHAR(100),
    Apellidos VARCHAR(100),
    Sexo VARCHAR(10),
    Correo VARCHAR(100),
    Telefono VARCHAR(50),
    Fecha_Nacimiento nVARCHAR(50),
    Direccion VARCHAR(200),
	[Experiencia_Laboral] NVARCHAR(100)
);

-- ========================
-- TABLA DE HECHOS
-- ========================

CREATE TABLE Hechos_Postulaciones (
    ID_Postulaciones INT PRIMARY KEY,

    id INT,
    ID_Postulante INT,
    ID_Fecha INT,
    ID_Plaza INT,
    ID_Empresa INT,

    Total INT,

    -- Claves foráneas
    FOREIGN KEY (id) REFERENCES Dimension_Municipio(id),
    FOREIGN KEY (ID_Postulante) REFERENCES Dimension_Postulante(ID_Postulante),
    FOREIGN KEY (ID_Fecha) REFERENCES Dimension_Tiempo(ID_Fecha),
    FOREIGN KEY (ID_Plaza) REFERENCES Dimension_Plaza(ID_Plaza),
    FOREIGN KEY (ID_Empresa) REFERENCES Dimension_Empresa(ID_Empresa)
);

----------------------------------------------------------------------------------------------------------------------------

--Primer paso crear el esquema INT--
CREATE SCHEMA [int]
    AUTHORIZATION [dbo];

--Segundo paso Creamos la tabla que sostiene el detalle de las fechas en que se han hecho 
--las cargas de datos anteriores. 

CREATE TABLE [int].[IncrementalLoads] ( 
    [LoadDateKey] INT            IDENTITY (1, 1) NOT NULL, 
    [TableName]   NVARCHAR (100) NOT NULL, 
    [LoadDate]    DATETIME       NOT NULL, 
    CONSTRAINT [PK_LoadDates] PRIMARY KEY CLUSTERED ([LoadDateKey] ASC) 
);

--Tercer paso  Creamos la tabla para llevar la trazabilidad de los datos 

CREATE TABLE [int].[Lineage] ( 
    [LineageKey]     INT            IDENTITY (1, 1) NOT NULL, 
    [TableName]      NVARCHAR (200) NOT NULL, 
    [StartLoad]      DATETIME       NOT NULL, 
    [FinishLoad]     DATETIME       NULL, 
    [LastLoadedDate] DATETIME       NOT NULL, 
    [Status]         NVARCHAR (1)   CONSTRAINT [DF_Lineage_Status] DEFAULT (N'P') NOT NULL, 
    [Type]           NVARCHAR (1)   CONSTRAINT [DF_Lineage_Type] DEFAULT (N'F') NOT NULL, 
    CONSTRAINT [PK_Integration_Lineage] PRIMARY KEY CLUSTERED ([LineageKey] ASC) 
); 


--cuarto paso Implementación del Linage 

 --Creamos el procedimiento alamcenado

 CREATE   PROCEDURE [int].[Get_LineageKey]
@LoadType nvarchar(1),
@TableName nvarchar(100),
@LastLoadedDate datetime
AS
BEGIN
    SET NOCOUNT ON;
    SET XACT_ABORT ON;

DECLARE @StartLoad datetime = SYSDATETIME();

INSERT INTO [int].[Lineage](
	 [TableName]
	,[StartLoad]
	,[FinishLoad]
	,[Status]
	,[Type]
	,[LastLoadedDate]
	)
VALUES (
	 @TableName
	,@StartLoad
	,NULL
	,'P'
	,@LoadType
	,@LastLoadedDate
	);

IF (@LoadType = 'F')
	BEGIN
		UPDATE [int].[IncrementalLoads]
		SET LoadDate = '1753-01-01'
		WHERE TableName = @TableName

		EXEC('TRUNCATE TABLE ' + @TableName)
	END;

SELECT MAX([LineageKey]) AS LineageKey
FROM [int].[Lineage]
WHERE 
	[TableName] = @TableName
	AND [StartLoad] = @StartLoad

RETURN 0;
END;

--Quinto paso creamos el  siguiente procedimiento almacenado que su trabajo 
--es devolvernos la fecha de la ul ma carga de una tabla en par cular. 

CREATE   PROCEDURE [int].[Get_LastLoadedDate]
@TableName nvarchar(100)
AS
BEGIN
    SET NOCOUNT ON;
    SET XACT_ABORT ON;

	IF NOT EXISTS(SELECT 1 FROM sys.tables WHERE name = @TableName AND type = N'U')
	BEGIN
        PRINT N'The table does not exist in the data warehouse.';
        THROW 51000, N'The table does not exist in the data warehouse.', 1;
        RETURN -1;
	END
	
	IF NOT EXISTS (SELECT 1 FROM [int].[IncrementalLoads] WHERE TableName = @TableName)
		INSERT INTO [int].[IncrementalLoads]
		SELECT @TableName, '1753-01-01'

	SELECT 
		[LoadDate] AS [LoadDate]
    FROM [int].[IncrementalLoads]
    WHERE 
		[TableName] = @TableName;

    RETURN 0;
END;

--sexto paso creamos nuestra tabla dimención fecha en este caso seria DimFecha

--El procedimiento almacenado (Load_DimDate.sql) se encarga de la lógica de los datos que se deben 
--insertar en la dimensión

CREATE PROCEDURE [dbo].[Load_DimDate] 
    @StartDate DATE = '2020-01-01', 
    @EndDate DATE = '2025-12-31' 
AS
BEGIN
  
    INSERT INTO DimDate (DateColumn)
    SELECT DateColumn
    FROM SomeOtherTable
    WHERE DateColumn BETWEEN @StartDate AND @EndDate;

END;


---------------------------------------------------------------------------------------------------------------------------------------





CREATE TABLE [dbo].[Staging_Empresa] (
    [ID_Empresa] INT NOT NULL, 
	[Codigo] NVARCHAR(50),
    [Nombre_Empresa] NVARCHAR(100) NULL,
    [Direccion] NVARCHAR(200) NULL,
    [Telefono] NVARCHAR(50) NULL,
    [Correo] NVARCHAR(100) NULL,
    [Valid_From] DATETIME NULL,
    [Valid_To] DATETIME NULL,
    PRIMARY KEY CLUSTERED ([ID_Empresa] ASC)
);

------------------------------------------------------

CREATE TABLE [dbo].[Staging_Postulante] (
    [ID_Postulante] INT NOT NULL,
    [Cedula] NVARCHAR(25) NULL,
    [Nombre_Postulante] NVARCHAR(100) NULL,
    [Apellido] NVARCHAR(100) NULL,
    [Sexo] NVARCHAR(10) NULL,
    [Correo] NVARCHAR(100) NULL,
    [Telefono] NVARCHAR(50) NULL,
    [Fecha_Nacimiento] DATE NULL,
    [Direccion] NVARCHAR(200) NULL,
	[Experiencia_Laboral] NVARCHAR(100),
    [Valid_From] DATETIME NULL,
    [Valid_To] DATETIME NULL,
    PRIMARY KEY CLUSTERED ([ID_Postulante] ASC)
);


------------------------------------------------------

CREATE TABLE [dbo].[Staging_Plaza] (
    [ID_Plaza] INT NOT NULL,
	[Codigo] NVARCHAR(60),
    [Salario] DECIMAL(10,2) NULL,
    [Descripcion] NVARCHAR(200) NULL,
    [Valid_From] DATETIME NULL,
    [Valid_To] DATETIME NULL,
    PRIMARY KEY CLUSTERED ([ID_Plaza] ASC)
);

----------------------------------------------------------
CREATE TABLE [dbo].[Staging_Habilidades] (
    [ID_Habilidade] INT NOT NULL,
	[Codigo] NVARCHAR(20),
    [Nombre_Habilidad] NVARCHAR(100) NULL,
    [Valid_From] DATETIME NULL,
    [Valid_To] DATETIME NULL,
    PRIMARY KEY CLUSTERED ([ID_Habilidade] ASC)
);

-----------------------------------------------------------

CREATE TABLE [dbo].[Staging_Municipio] (
    [id] INT NOT NULL,
	[Codigo] NVARCHAR(50),
    [Nombre] NVARCHAR(100) NULL,
    [Valid_From] DATETIME NULL,
    [Valid_To] DATETIME NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);
----------------------------------------------------------





CREATE PROCEDURE [dbo].[Load_StagingEmpresa]
    @LastLoadDate DATETIME,
    @NewLoadDate  DATETIME
AS
BEGIN
    SET NOCOUNT ON;
    SET XACT_ABORT ON;

    DECLARE @CurrentDate DATETIME = GETDATE();

    SELECT 
        e.ID_Empresa,
        CAST(e.Codigo AS NVARCHAR(50)),
        CAST(e.Nombre_Empresa AS NVARCHAR(100)),
        CAST(e.Direccion AS NVARCHAR(200)),
        CAST(e.Telefono AS NVARCHAR(50)),
        CAST(e.Correo AS NVARCHAR(100)),
        @CurrentDate AS Valid_From,
        CAST('9999-12-31' AS DATETIME) AS Valid_To
    FROM dbo.empresa_empresa e;

    RETURN 0;
END;
GO




--------------------------------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[Load_StagingHabilidades]
    @LastLoadDate DATETIME,
    @NewLoadDate  DATETIME
AS
BEGIN
    SET NOCOUNT ON;
    SET XACT_ABORT ON;

    DECLARE @CurrentDate DATETIME = GETDATE();

    SELECT 
        h.ID_Habilidade,
        CAST(h.Codigo AS NVARCHAR(20)),
        CAST(h.Nombre_Habilidad AS NVARCHAR(100)),
        @CurrentDate AS Valid_From,
        CAST('9999-12-31' AS DATETIME) AS Valid_To
    FROM [dbo].[habilidades_habilidades] h;

    RETURN 0;
END;
GO


-------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[Load_StagingMunicipio]
    @LastLoadDate DATETIME,
    @NewLoadDate  DATETIME
AS
BEGIN
    SET NOCOUNT ON;
    SET XACT_ABORT ON;

    DECLARE @CurrentDate DATETIME = GETDATE();

    SELECT 
        m.id,
        CAST(m.Codigo AS NVARCHAR(50)),
        CAST(m.Nombre AS NVARCHAR(100)),
        @CurrentDate AS Valid_From,
        CAST('9999-12-31' AS DATETIME) AS Valid_To
    FROM [dbo].[municipio_municipio] m;

    RETURN 0;
END;
GO


-------------------------------------------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[Load_StagingPlaza]
    @LastLoadDate DATETIME,
    @NewLoadDate  DATETIME
AS
BEGIN
    SET NOCOUNT ON;
    SET XACT_ABORT ON;

    DECLARE @CurrentDate DATETIME = GETDATE();

    SELECT 
        p.ID_Plaza,
        CAST(p.Codigo AS NVARCHAR(60)),
        CAST(p.Salario AS DECIMAL(10,2)),
        CAST(p.Descripcion AS NVARCHAR(100)),
        @CurrentDate AS Valid_From,
        CAST('9999-12-31' AS DATETIME) AS Valid_To
    FROM dbo.plaza_plaza p;

    RETURN 0;
END;
GO

----------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[Load_StagingPostulante]
    @LastLoadDate DATETIME,
    @NewLoadDate  DATETIME
AS
BEGIN
    SET NOCOUNT ON;
    SET XACT_ABORT ON;

    DECLARE @CurrentDate DATETIME = GETDATE();

  
    SELECT
        p.ID_Postulante,
        CAST(p.Cedula AS NVARCHAR(25)),
        CAST(p.Nombre_Postulante AS NVARCHAR(100)),
        CAST(p.Apellidos AS NVARCHAR(100)),
        CAST(p.Sexo AS NVARCHAR(10)),
        CAST(p.Correo AS NVARCHAR(100)),
        CAST(p.Telefono AS NVARCHAR(50)),
        p.Fecha_Nacimiento,
        CAST(p.Direccion AS NVARCHAR(200)),
        CAST(p.Experiencia_Laboral AS NVARCHAR(100)),
        @CurrentDate AS Valid_From,
        CAST('9999-12-31' AS DATETIME) AS Valid_To
    FROM dbo.postulante_postulante p;

    RETURN 0;
END;
GO





------------------------------------------------------------------------------------------------------------




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
           sp.[ID_Postulante], sp.[Cedula], sp.[Nombre_Postulante], sp.Apellidos, sp.[Sexo],
           sp.[Correo], sp.[Telefono], sp.[Fecha_Nacimiento], sp.[Direccion], sp.[Experiencia_Laboral]
    FROM Staging_Postulante sp;

    COMMIT;
END;
GO

