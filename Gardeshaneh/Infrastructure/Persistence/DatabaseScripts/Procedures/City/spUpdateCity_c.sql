USE [Gardeshaneh]
GO

IF EXISTS(SELECT 1 FROM sys.procedures WHERE [object_id] = OBJECT_ID('dbo.spUpdateCity_c'))
	DROP PROCEDURE dbo.spUpdateCity_c
GO

CREATE PROCEDURE dbo.spUpdateCity_c
	@AId INT,
	@AProvinceName NVARCHAR(200),
	@APersianName NVARCHAR(200),
	@AEnglishName NVARCHAR(200),
	@AIsActive BIT

AS
BEGIN
	SET NOCOUNT ON;
	SET XACT_ABORT ON;

	DECLARE 
		@Id INT = @AId,
		@ProvinceName NVARCHAR(200) = LTRIM(RTRIM(@AProvinceName)),
		@PersianName NVARCHAR(200) = LTRIM(RTRIM(@APersianName)),
		@EnglishName NVARCHAR(200) = LTRIM(RTRIM(@AEnglishName)),
		@IsActive BIT = @AIsActive

	BEGIN TRY
		BEGIN TRAN
			
			UPDATE dbo.Cities
			SET
				[ModifyDate] = GETDATE(),
				[ProvinceName] = @ProvinceName,
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
