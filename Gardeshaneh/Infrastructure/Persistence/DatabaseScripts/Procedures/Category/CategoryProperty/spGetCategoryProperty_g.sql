USE [Gardeshaneh]
GO

IF EXISTS(SELECT 1 FROM sys.procedures WHERE [object_id] = OBJECT_ID('dbo.spGetCategoryProperty_g'))
	DROP PROCEDURE dbo.spGetCategoryProperty_g
GO

CREATE PROCEDURE dbo.spGetCategoryProperty_g
	@AId INT

AS
BEGIN
	SET NOCOUNT ON;

	DECLARE 
		@Id INT = COALESCE(@AId, 0)

	SELECT *
	FROM dbo.CategoryProperties
	WHERE Id = @Id

END
