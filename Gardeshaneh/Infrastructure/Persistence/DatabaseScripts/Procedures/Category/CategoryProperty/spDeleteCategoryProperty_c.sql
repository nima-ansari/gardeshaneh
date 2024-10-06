USE [Gardeshaneh]
GO

IF EXISTS(SELECT 1 FROM sys.procedures WHERE [object_id] = OBJECT_ID('dbo.spDeleteCategoryProperty_c'))
	DROP PROCEDURE dbo.spDeleteCategoryProperty_c
GO

CREATE PROCEDURE dbo.spDeleteCategoryProperty_c
	@AId INT

AS
BEGIN
	SET NOCOUNT ON;
	SET XACT_ABORT ON;

	DECLARE 
		@Id BIGINT = @AId

	BEGIN TRY
		BEGIN TRAN

		  UPDATE dbo.CategoryProperties
		  SET IsDelete = 1
		  WHERE ID = @Id

		COMMIT
	END TRY
	BEGIN CATCH
		;THROW
	END CATCH

END
