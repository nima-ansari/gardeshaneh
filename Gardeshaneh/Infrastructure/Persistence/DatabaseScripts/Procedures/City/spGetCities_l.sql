USE [Gardeshaneh]
GO

IF EXISTS(SELECT 1 FROM sys.procedures WHERE [object_id] = OBJECT_ID('dbo.spGetCities_l'))
	DROP PROCEDURE dbo.spGetCities_l
GO

CREATE PROCEDURE dbo.spGetCities_l
	@AProvinceName NVARCHAR(200),
	@APersianName NVARCHAR(200),
	@AEnglishName NVARCHAR(200),
	@AActiveState TINYINT,
	@ADeleteState TINYINT,
	@APagesize INT,
	@APageIndex INT
AS
BEGIN
	SET NOCOUNT ON;
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;  

	DECLARE
		@ProvinceName NVARCHAR(200) = LTRIM(RTRIM(@AProvinceName)),
		@PersianName NVARCHAR(200) = LTRIM(RTRIM(@APersianName)),
		@EnglishName NVARCHAR(200) = LTRIM(RTRIM(@AEnglishName)),
		@ActiveState TINYINT = COALESCE(@AActiveState, 0),
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
		FROM dbo.Cities
		WHERE 
			(@ProvinceName IS NULL OR ProvinceName LIKE CONCAT(N'%', @ProvinceName, '%'))
			AND (@PersianName IS NULL OR PersianName LIKE CONCAT(N'%', @PersianName, '%'))
			AND (@EnglishName IS NULL OR EnglishName LIKE CONCAT(N'%', @EnglishName, '%'))
			AND (@ActiveState < 1 OR IsActive = @ActiveState - 1)
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
