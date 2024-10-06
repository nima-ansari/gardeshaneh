USE [Gardeshaneh]
GO

IF EXISTS(SELECT 1 FROM sys.procedures WHERE [object_id] = OBJECT_ID('dbo.spUpdateProperty_c'))
	DROP PROCEDURE dbo.spUpdateProperty_c
GO

CREATE PROCEDURE dbo.spUpdateProperty_c
	@AId INT,
	@APropertyTypeEnum TINYINT,
	@ATitle NVARCHAR(200),
	@ABootstrapIcon NVARCHAR(200)

AS
BEGIN
	SET NOCOUNT ON;
	SET XACT_ABORT ON;

	DECLARE 
		@Id INT = @AId,
		@PropertyTypeEnum TINYINT = COALESCE(@APropertyTypeEnum, 0),
		@Title NVARCHAR(200) = LTRIM(RTRIM(@ATitle)),
		@BootstrapIcon NVARCHAR(200) = LTRIM(RTRIM(@ABootstrapIcon))

	BEGIN TRY
		BEGIN TRAN
			
			UPDATE dbo.Properties
			SET
				[ModifyDate] = GETDATE(),
				[PropertyTypeEnum] = @PropertyTypeEnum,
				[Title] = @Title,
				[BootstrapIcon] = @BootstrapIcon
			WHERE Id = @Id

		COMMIT
	END TRY
	BEGIN CATCH
		;THROW
	END CATCH

END
