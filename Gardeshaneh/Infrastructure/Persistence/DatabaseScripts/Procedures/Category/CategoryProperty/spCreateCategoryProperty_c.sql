USE [Gardeshaneh]
GO

IF EXISTS(SELECT 1 FROM sys.procedures WHERE [object_id] = OBJECT_ID('dbo.spCreateCategoryProperty_c'))
	DROP PROCEDURE dbo.spCreateCategoryProperty_c
GO

CREATE PROCEDURE dbo.spCreateCategoryProperty_c
	@APropertyId BIGINT,
	@ACategoryId BIGINT,
	@AIsActive BIT

AS
BEGIN
	SET NOCOUNT ON;
	SET XACT_ABORT ON;

	DECLARE 
		@PropertyId BIGINT = @APropertyId,
		@CategoryId BIGINT = @ACategoryId,
		@IsActive BIT = @AIsActive

	BEGIN TRY
		BEGIN TRAN
			
			INSERT INTO dbo.CategoryProperties
			([CreationDate], [ModifyDate], [IsDelete], [PropertyId], [CategoryId], [IsActive])
			VALUES
			(GETDATE(), GETDATE(), 0, @PropertyId, @CategoryId, @IsActive)

		COMMIT
	END TRY
	BEGIN CATCH
		;THROW
	END CATCH

END
