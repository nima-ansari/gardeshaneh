USE [Gardeshaneh]
GO

IF EXISTS(SELECT 1 FROM sys.procedures WHERE [object_id] = OBJECT_ID('dbo.spGetProperties_l'))
	DROP PROCEDURE dbo.spGetProperties_l
GO

CREATE PROCEDURE dbo.spGetProperties_l
	@APropertyTypeEnum TINYINT,
	@ATitle NVARCHAR(200),
	@ABootstrapIcon NVARCHAR(200),
	@ADeleteState TINYINT,
	@APagesize INT,
	@APageIndex INT
AS
BEGIN
	SET NOCOUNT ON;
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;  

	DECLARE
		@PropertyTypeEnum TINYINT = COALESCE(@APropertyTypeEnum, 0),
		@Title NVARCHAR(200) = LTRIM(RTRIM(@ATitle)),
		@BootstrapIcon NVARCHAR(200) = LTRIM(RTRIM(@ABootstrapIcon)),
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
		FROM dbo.Properties
		WHERE 
			(@PropertyTypeEnum < 1 OR PropertyTypeEnum = @PropertyTypeEnum)
			AND (@Title IS NULL OR Title LIKE CONCAT(N'%', @Title, '%'))
			AND (@BootstrapIcon IS NULL OR BootstrapIcon LIKE CONCAT(N'%', @BootstrapIcon, '%'))
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
