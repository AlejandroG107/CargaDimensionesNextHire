


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



