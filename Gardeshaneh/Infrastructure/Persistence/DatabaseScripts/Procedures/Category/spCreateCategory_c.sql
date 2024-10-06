USE [Gardeshaneh]
GO

IF EXISTS(SELECT 1 FROM sys.procedures WHERE [object_id] = OBJECT_ID('dbo.spCreateCategory_c'))
	DROP PROCEDURE dbo.spCreateCategory_c
GO

CREATE PROCEDURE dbo.spCreateCategory_c
	@AParentId BIGINT,
	@APersianName NVARCHAR(100),
	@AEnglishName NVARCHAR(100),
	@AIsActive BIT

AS
BEGIN
	SET NOCOUNT ON;
	SET XACT_ABORT ON;

	DECLARE 
		@ParentId BIGINT = @AParentId,
		@PersianName NVARCHAR(100) = LTRIM(RTRIM(@APersianName)),
		@EnglishName NVARCHAR(100) = LTRIM(RTRIM(@AEnglishName)),
		@IsActive BIT = @AIsActive

	BEGIN TRY
		BEGIN TRAN
			
			INSERT INTO dbo.Categories
			([CreationDate], [ModifyDate], [IsDelete], [ParentId], [PersianName], [EnglishName], [IsActive])
			VALUES
			(GETDATE(), GETDATE(), 0, @ParentId, @PersianName, @EnglishName, @IsActive)
		COMMIT
	END TRY
	BEGIN CATCH
		;THROW
	END CATCH

END
