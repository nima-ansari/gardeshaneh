USE [Gardeshaneh]
GO

IF EXISTS(SELECT 1 FROM sys.procedures WHERE [object_id] = OBJECT_ID('dbo.spGetCategory_g'))
	DROP PROCEDURE dbo.spGetCategory_g
GO

CREATE PROCEDURE dbo.spGetCategory_g
	@AId INT

AS
BEGIN
	SET NOCOUNT ON;

	DECLARE 
		@Id INT = COALESCE(@AId, 0)

	SELECT *
	FROM dbo.Categories
	WHERE Id = @Id

END
