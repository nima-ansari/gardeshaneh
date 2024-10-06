USE [Gardeshaneh]
GO

IF EXISTS(SELECT 1 FROM sys.procedures WHERE [object_id] = OBJECT_ID('dbo.spGetCategoryProperties_l'))
	DROP PROCEDURE dbo.spGetCategoryProperties_l
GO

CREATE PROCEDURE dbo.spGetCategoryProperties_l
	@APropertyId BIGINT,
	@ACategoryId BIGINT,
	@AActiveState TINYINT,
	@APagesize INT,
	@APageIndex INT
AS
BEGIN
	SET NOCOUNT ON;
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;  

	DECLARE
		@PropertyId BIGINT = COALESCE(@APropertyId, 0),
		@CategoryId BIGINT = COALESCE(@ACategoryId, 0),
		@ActiveState TINYINT = COALESCE(@AActiveState, 0),
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
		FROM dbo.CategoryProperties
		WHERE 
			(@PropertyId < 1 OR PropertyId = @PropertyId)
			AND (@CategoryId < 1 OR CategoryId = @CategoryId)
			AND (@ActiveState < 1 OR IsActive = @ActiveState - 1)
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
