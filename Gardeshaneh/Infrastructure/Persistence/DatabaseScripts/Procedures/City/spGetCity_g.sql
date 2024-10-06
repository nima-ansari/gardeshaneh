USE [Gardeshaneh]
GO

IF EXISTS(SELECT 1 FROM sys.procedures WHERE [object_id] = OBJECT_ID('dbo.spGetCity_g'))
	DROP PROCEDURE dbo.spGetCity_g
GO

CREATE PROCEDURE dbo.spGetCity_g
	@AId INT

AS
BEGIN
	SET NOCOUNT ON;

	DECLARE 
		@Id INT = COALESCE(@AId, 0)

	SELECT *
	FROM dbo.Cities
	WHERE Id = @Id

END
