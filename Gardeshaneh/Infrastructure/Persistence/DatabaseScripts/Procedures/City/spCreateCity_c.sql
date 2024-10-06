USE [Gardeshaneh]
GO

IF EXISTS(SELECT 1 FROM sys.procedures WHERE [object_id] = OBJECT_ID('dbo.spCreateCity_c'))
	DROP PROCEDURE dbo.spCreateCity_c
GO

CREATE PROCEDURE dbo.spCreateCity_c
	@AProvinceName NVARCHAR(200),
	@APersianName NVARCHAR(200),
	@AEnglishName NVARCHAR(200),
	@AIsActive BIT

AS
BEGIN
	SET NOCOUNT ON;
	SET XACT_ABORT ON;

	DECLARE 
		@ProvinceName NVARCHAR(200) = LTRIM(RTRIM(@AProvinceName)),
		@PersianName NVARCHAR(200) = LTRIM(RTRIM(@APersianName)),
		@EnglishName NVARCHAR(200) = LTRIM(RTRIM(@AEnglishName)),
		@IsActive BIT = @AIsActive

	BEGIN TRY
		BEGIN TRAN
			
			INSERT INTO dbo.Cities
			([CreationDate], [ModifyDate], [IsDelete], [ProvinceName], [PersianName], [EnglishName], [IsActive])
			VALUES
			(GETDATE(), GETDATE(), 0, @ProvinceName, @PersianName, @EnglishName, @IsActive)
		COMMIT
	END TRY
	BEGIN CATCH
		;THROW
	END CATCH

END
