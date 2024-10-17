USE [Gardeshaneh]
GO

IF EXISTS(SELECT 1 FROM sys.procedures WHERE [object_id] = OBJECT_ID('dbo.spCreatePlaceGallery_c'))
	DROP PROCEDURE dbo.spCreatePlaceGallery_c
GO

CREATE PROCEDURE dbo.spCreatePlaceGallery_c
	@APlaceId BIGINT,
	@AImageName NCHAR(100),
	@ASeoTitle NVARCHAR(100)

AS
BEGIN
	SET NOCOUNT ON;
	SET XACT_ABORT ON;

	DECLARE 
		@PlaceId BIGINT = @APlaceId,
		@ImageName NCHAR(100) = LTRIM(RTRIM(@AImageName)),
		@SeoTitle NVARCHAR(100) = LTRIM(RTRIM(@ASeoTitle))

	BEGIN TRY
		BEGIN TRAN
			
			INSERT INTO dbo.PlaceGalleries
			([CreationDate], [ModifyDate], [IsDelete], [PlaceId], [ImageName], [SeoTitle])
			VALUES
			(GETDATE(), GETDATE(), 0, @APlaceId, @ImageName, @SeoTitle)
		COMMIT
	END TRY
	BEGIN CATCH
		;THROW
	END CATCH

END
