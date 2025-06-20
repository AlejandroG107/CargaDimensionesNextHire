-- Declarar fechas de prueba
DECLARE @LastLoadDate DATETIME = '2024-01-01';
DECLARE @NewLoadDate  DATETIME = GETDATE();

USE [DW_NextHire]



SELECT * FROM INT.Lineage 
SELECT * from int.IncrementalLoads 

-- ========================
-- Empresa
-- ========================
SELECT * FROM DBO.Staging_Empresa
SELECT COUNT(1) FROM DBO.Dimension_Empresa
-- ========================
-- Habilidades
-- ========================
SELECT COUNT(*) FROM DBO.Staging_Habilidades
SELECT COUNT(1) FROM DBO.Dimension_Habilidades
-- ========================
-- Municipio
-- ========================
SELECT COUNT(*) FROM DBO.Staging_Municipio
SELECT COUNT(1) FROM DBO.Dimension_Municipio
-- ========================
-- Plaza
-- ========================
SELECT COUNT(*) FROM DBO.Staging_Plaza
SELECT COUNT(1) FROM DBO.Dimension_Plaza
-- ========================
-- Postulante
-- ========================
SELECT COUNT(*) FROM DBO.Staging_Postulante
SELECT COUNT(1) FROM DBO.Dimension_Postulante


-- Verificar los datos insertados en las tablas staging:
SELECT * FROM dbo.Staging_Empresa;
SELECT * FROM dbo.Staging_Habilidades;
SELECT * FROM dbo.Staging_Municipio;
SELECT * FROM dbo.Staging_Plaza;
SELECT * FROM dbo.Staging_Postulante;


SELECT * FROM dbo.Dimension_Empresa
SELECT * FROM dbo.Dimension_Habilidades
SELECT * FROM dbo.Dimension_Municipio
SELECT * FROM dbo.Dimension_Plaza
SELECT * FROM dbo.Dimension_Postulante










