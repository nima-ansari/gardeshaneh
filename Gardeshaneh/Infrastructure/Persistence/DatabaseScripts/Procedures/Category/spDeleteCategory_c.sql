USE [Gardeshaneh]
GO

IF EXISTS(SELECT 1 FROM sys.procedures WHERE [object_id] = OBJECT_ID('dbo.spDeleteCategory_c'))
	DROP PROCEDURE dbo.spDeleteCategory_c
GO

CREATE PROCEDURE dbo.spDeleteCategory_c
	@AId INT

AS
BEGIN
	SET NOCOUNT ON;
	SET XACT_ABORT ON;

	DECLARE 
		@Id BIGINT = @AId

	BEGIN TRY
		BEGIN TRAN

		  UPDATE dbo.Categories
		  SET IsDelete = 1
		  WHERE ID = @Id

		COMMIT
	END TRY
	BEGIN CATCH
		;THROW
	END CATCH

END
