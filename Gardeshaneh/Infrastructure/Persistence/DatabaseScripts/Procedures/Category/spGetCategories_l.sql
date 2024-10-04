USE [Gardeshaneh]
GO

IF EXISTS(SELECT 1 FROM sys.procedures WHERE [object_id] = OBJECT_ID('dbo.spGetCategories_l'))
	DROP PROCEDURE dbo.spGetCategories_l
GO

CREATE PROCEDURE dbo.spGetCategories_l
	@AParentId BIGINT,
	@APersianName NVARCHAR(100),
	@AEnglishName NVARCHAR(100),
	@AActiveState TINYINT,
	@APagesize INT,
	@APageIndex INT
AS
BEGIN
	SET NOCOUNT ON;
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;  

	DECLARE
		@ParentId BIGINT = COALESCE(@AParentId, 0),
		@PersianName NVARCHAR(100) = LTRIM(RTRIM(@APersianName)),
		@EnglishName NVARCHAR(10) = LTRIM(RTRIM(@AEnglishName)),
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
		FROM dbo.Categories
		WHERE 
			(@ParentId < 1 OR ParentId = @ParentId)
			AND (@PersianName IS NULL OR PersianName LIKE CONCAT(N'%', @PersianName, '%'))
			AND (@EnglishName IS NULL OR EnglishName LIKE CONCAT(N'%', @EnglishName, '%'))
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
