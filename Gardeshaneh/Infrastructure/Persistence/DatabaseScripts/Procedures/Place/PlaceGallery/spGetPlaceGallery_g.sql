USE [Gardeshaneh]
GO

IF EXISTS(SELECT 1 FROM sys.procedures WHERE [object_id] = OBJECT_ID('dbo.spGetPlaceGallery_g'))
	DROP PROCEDURE dbo.spGetPlaceGallery_g
GO

CREATE PROCEDURE dbo.spGetPlaceGallery_g
	@AId INT

AS
BEGIN
	SET NOCOUNT ON;

	DECLARE 
		@Id INT = COALESCE(@AId, 0)

	SELECT *
	FROM dbo.PlaceGalleries
	WHERE Id = @Id

END
