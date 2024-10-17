USE [Gardeshaneh]
GO

IF EXISTS(SELECT 1 FROM sys.procedures WHERE [object_id] = OBJECT_ID('dbo.spGetPlaceProperty_g'))
	DROP PROCEDURE dbo.spGetPlaceProperty_g
GO

CREATE PROCEDURE dbo.spGetPlaceProperty_g
	@AId INT

AS
BEGIN
	SET NOCOUNT ON;

	DECLARE 
		@Id INT = COALESCE(@AId, 0)

	SELECT *
	FROM dbo.PlaceProperties
	WHERE Id = @Id

END
