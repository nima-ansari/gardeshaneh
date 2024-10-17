USE [Gardeshaneh]
GO

IF EXISTS(SELECT 1 FROM sys.procedures WHERE [object_id] = OBJECT_ID('dbo.spUpdatePlaceGallery_c'))
	DROP PROCEDURE dbo.spUpdatePlaceGallery_c
GO

CREATE PROCEDURE dbo.spUpdatePlaceGallery_c
	@AId INT,
	@APlaceId BIGINT,
	@AImageName NCHAR(100),
	@ASeoTitle NVARCHAR(100)

AS
BEGIN
	SET NOCOUNT ON;
	SET XACT_ABORT ON;

	DECLARE 
		@Id INT = @AId,
		@PlaceId BIGINT = @APlaceId,
		@ImageName NCHAR(100) = LTRIM(RTRIM(@AImageName)),
		@SeoTitle NVARCHAR(100) = LTRIM(RTRIM(@ASeoTitle))

	BEGIN TRY
		BEGIN TRAN
			
			UPDATE dbo.PlaceGalleries
			SET
				[ModifyDate] = GETDATE(),
				[PlaceId] = @PlaceId,
				[ImageName] = @ImageName,
				[SeoTitle] = @SeoTitle
			WHERE Id = @Id

		COMMIT
	END TRY
	BEGIN CATCH
		;THROW
	END CATCH

END
