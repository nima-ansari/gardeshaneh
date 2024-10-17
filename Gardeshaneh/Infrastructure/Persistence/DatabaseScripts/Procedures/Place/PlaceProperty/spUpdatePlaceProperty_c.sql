USE [Gardeshaneh]
GO

IF EXISTS(SELECT 1 FROM sys.procedures WHERE [object_id] = OBJECT_ID('dbo.spUpdatePlaceProperty_c'))
	DROP PROCEDURE dbo.spUpdatePlaceProperty_c
GO

CREATE PROCEDURE dbo.spUpdatePlaceProperty_c
	@AId INT,
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
		@Id INT = @AId,
		@PropertyId BIGINT = @APropertyId,
		@PlaceId BIGINT = @APlaceId,
		@BooleanValue BIT = @ABooleanValue,
		@StringValue NVARCHAR(200) = LTRIM(RTRIM(@AStringValue)),
		@DecimalValue DECIMAL(12, 2) = @ADecimalValue

	BEGIN TRY
		BEGIN TRAN
			
			UPDATE dbo.PlaceProperties
			SET
				[ModifyDate] = GETDATE(),
				[PlaceId] = @PlaceId,
				[PropertyId] = @PropertyId,
				[BooleanValue] = @BooleanValue,
				[StringValue] = @StringValue,
				[DecimalValue] = @DecimalValue
			WHERE Id = @Id

		COMMIT
	END TRY
	BEGIN CATCH
		;THROW
	END CATCH

END
