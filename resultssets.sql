USE [DW_NextHire]


DECLARE @sql NVARCHAR(MAX) = N'';

SELECT @sql = 'WITH RESULT SETS
(
    (
        ' + STRING_AGG('[' + COLUMN_NAME + '] [' + DATA_TYPE + 
            CASE 
                WHEN CHARACTER_MAXIMUM_LENGTH IS NOT NULL THEN '](' + CAST(CHARACTER_MAXIMUM_LENGTH AS NVARCHAR(MAX)) + ')'
                WHEN DATA_TYPE IN ('decimal', 'numeric') THEN '](' + CAST(NUMERIC_PRECISION AS NVARCHAR(MAX)) + ',' + CAST(NUMERIC_SCALE AS NVARCHAR(MAX)) + ')'
                ELSE ']'
            END, 
            ', ' + CHAR(10)) WITHIN GROUP (ORDER BY ORDINAL_POSITION) + '
    )
)'
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'Staging_Municipio';

PRINT @sql;