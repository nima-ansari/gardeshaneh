USE [Gardeshaneh]
GO

IF EXISTS(SELECT 1 FROM sys.procedures WHERE [object_id] = OBJECT_ID('dbo.spGetUser_g'))
	DROP PROCEDURE dbo.spGetUser_g
GO

CREATE PROCEDURE dbo.spGetUser_g
	@AId INT

AS
BEGIN
	SET NOCOUNT ON;

	DECLARE 
		@Id INT = COALESCE(@AId, 0)

	SELECT *
	FROM dbo.Users
	WHERE Id = @Id

END
