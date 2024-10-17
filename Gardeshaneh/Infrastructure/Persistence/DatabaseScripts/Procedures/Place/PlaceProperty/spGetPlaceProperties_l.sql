USE [Gardeshaneh]
GO

IF EXISTS(SELECT 1 FROM sys.procedures WHERE [object_id] = OBJECT_ID('dbo.spGetPlaceProperties_l'))
	DROP PROCEDURE dbo.spGetPlaceProperties_l
GO

CREATE PROCEDURE dbo.spGetPlaceProperties_l
	@APlaceId BIGINT,
	@APropertyId BIGINT,
	@ADeleteState TINYINT,
	@APagesize INT,
	@APageIndex INT
AS
BEGIN
	SET NOCOUNT ON;
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;  

	DECLARE
		@PlaceId BIGINT = @APlaceId,
		@PropertyId BIGINT = @APropertyId,
		@DeleteState TINYINT = COALESCE(@ADeleteState, 0),
		@Pagesize INT = COALESCE(@APagesize, 0),
		@PageIndex INT = COALESCE(@APageIndex, 0)

	IF @PageIndex = 0 OR @Pagesize = 0 
	BEGIN
		SET @Pagesize = 1000
		SET @PageIndex = 1
	END

	;WITH MainSelect AS
	(
		SELECT *
		FROM dbo.PlaceProperties
		WHERE 
			(@PlaceId < 1 OR PlaceId = @PlaceId)
			AND (@PropertyId < 1 OR PropertyId = @PropertyId)
			AND (@DeleteState < 1 OR IsDelete = @DeleteState - 1)
	)
	,Total AS
	(
		SELECT COUNT(*) AS Total FROM MainSelect
	)
	SELECT * FROM MainSelect,Total
	ORDER BY ID DESC
	OFFSET ((@PageIndex - 1) * @PageSize) ROWS FETCH NEXT @PageSize ROWS ONLY
	OPTION(RECOMPILE);

	
END
