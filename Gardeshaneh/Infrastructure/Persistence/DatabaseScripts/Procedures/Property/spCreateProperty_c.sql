USE [Gardeshaneh]
GO

IF EXISTS(SELECT 1 FROM sys.procedures WHERE [object_id] = OBJECT_ID('dbo.spCreateProperty_c'))
	DROP PROCEDURE dbo.spCreateProperty_c
GO

CREATE PROCEDURE dbo.spCreateProperty_c
	@APropertyTypeEnum TINYINT,
	@ATitle NVARCHAR(200),
	@ABootstrapIcon NVARCHAR(200)

AS
BEGIN
	SET NOCOUNT ON;
	SET XACT_ABORT ON;

	DECLARE 
		@PropertyTypeEnum TINYINT = COALESCE(@APropertyTypeEnum, 0),
		@Title NVARCHAR(200) = LTRIM(RTRIM(@ATitle)),
		@BootstrapIcon NVARCHAR(200) = LTRIM(RTRIM(@ABootstrapIcon))

	BEGIN TRY
		BEGIN TRAN
			
			INSERT INTO dbo.Properties
			([CreationDate], [ModifyDate], [IsDelete], [PropertyTypeEnum], [Title], [BootstrapIcon])
			VALUES
			(GETDATE(), GETDATE(), 0, @PropertyTypeEnum, @Title, @BootstrapIcon)
		COMMIT
	END TRY
	BEGIN CATCH
		;THROW
	END CATCH

END
