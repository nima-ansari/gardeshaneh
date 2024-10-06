USE [Gardeshaneh]
GO

IF EXISTS(SELECT 1 FROM sys.procedures WHERE [object_id] = OBJECT_ID('dbo.spUpdateCategoryProperty_c'))
	DROP PROCEDURE dbo.spUpdateCategoryProperty_c
GO

CREATE PROCEDURE dbo.spUpdateCategoryProperty_c
	@AId INT,
	@APropertyId BIGINT,
	@ACategoryId BIGINT,
	@AIsActive BIT

AS
BEGIN
	SET NOCOUNT ON;
	SET XACT_ABORT ON;

	DECLARE 
		@Id INT = @AId,
		@PropertyId BIGINT = @APropertyId,
		@CategoryId BIGINT = @ACategoryId,
		@IsActive BIT = @AIsActive

	BEGIN TRY
		BEGIN TRAN
			
			UPDATE dbo.CategoryProperties
			SET
				[ModifyDate] = GETDATE(),
				[PropertyId] = @PropertyId,
				[CategoryId] = @CategoryId,
				[IsActive] = @IsActive
			WHERE Id = @Id

		COMMIT
	END TRY
	BEGIN CATCH
		;THROW
	END CATCH

END
