USE [Gardeshaneh]
GO

IF EXISTS(SELECT 1 FROM sys.procedures WHERE [object_id] = OBJECT_ID('dbo.spGetProperty_g'))
	DROP PROCEDURE dbo.spGetProperty_g
GO

CREATE PROCEDURE dbo.spGetProperty_g
	@AId INT

AS
BEGIN
	SET NOCOUNT ON;

	DECLARE 
		@Id INT = COALESCE(@AId, 0)

	SELECT *
	FROM dbo.Properties
	WHERE Id = @Id

END
