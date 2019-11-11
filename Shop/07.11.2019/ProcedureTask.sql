CREATE PROCEDURE GetRandIdFromTable
AS
	DECLARE @CountIDinTable INT
	SET @CountIDinTable = (SELECT COUNT(*) FROM TableTask)
RETURN @CountIDinTable
