USE [Gardeshaneh]
GO

IF EXISTS(SELECT 1 FROM sys.procedures WHERE [object_id] = OBJECT_ID('dbo.spCreatePlaceProperty_c'))
	DROP PROCEDURE dbo.spCreatePlaceProperty_c
GO

CREATE PROCEDURE dbo.spCreatePlaceProperty_c
	@APropertyId BIGINT,
	@APlaceId BIGINT,
	@ABooleanValue BIT,
	@AStringValue NVARCHAR(200),
	@ADecimalValue DECIMAL(12, 2)

AS
BEGIN
	SET NOCOUNT ON;
	SET XACT_ABORT ON;

	DECLARE 
		@PropertyId BIGINT = @APropertyId,
		@PlaceId BIGINT = @APlaceId,
		@BooleanValue BIT = @ABooleanValue,
		@StringValue NVARCHAR(200) = LTRIM(RTRIM(@AStringValue)),
		@DecimalValue DECIMAL(12, 2) = @ADecimalValue

	BEGIN TRY
		BEGIN TRAN
			
			INSERT INTO dbo.PlaceProperties
			([CreationDate], [ModifyDate], [IsDelete], [PlaceId], [PropertyId], [BooleanValue], [StringValue], [DecimalValue])
			VALUES
			(GETDATE(), GETDATE(), 0, @APlaceId, @PropertyId, @BooleanValue, @StringValue, @DecimalValue)
		COMMIT
	END TRY
	BEGIN CATCH
		;THROW
	END CATCH

END
