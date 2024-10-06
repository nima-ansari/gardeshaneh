USE [Gardeshaneh]
GO

IF EXISTS(SELECT 1 FROM sys.procedures WHERE [object_id] = OBJECT_ID('dbo.spUpdateCategory_c'))
	DROP PROCEDURE dbo.spUpdateCategory_c
GO

CREATE PROCEDURE dbo.spUpdateCategory_c
	@AId INT,
	@AParentId BIGINT,
	@APersianName NVARCHAR(100),
	@AEnglishName NVARCHAR(100),
	@AIsActive BIT

AS
BEGIN
	SET NOCOUNT ON;
	SET XACT_ABORT ON;

	DECLARE 
		@Id INT = @AId,
		@ParentId BIGINT = @AParentId,
		@PersianName NVARCHAR(100) = LTRIM(RTRIM(@APersianName)),
		@EnglishName NVARCHAR(100) = LTRIM(RTRIM(@AEnglishName)),
		@IsActive BIT = @AIsActive

	BEGIN TRY
		BEGIN TRAN
			
			UPDATE dbo.Categories
			SET
				[ModifyDate] = GETDATE(),
				[ParentId] = @ParentId,
				[PersianName] = @PersianName,
				[EnglishName] = @EnglishName,
				[IsActive] = @IsActive
			WHERE Id = @Id

		COMMIT
	END TRY
	BEGIN CATCH
		;THROW
	END CATCH

END
