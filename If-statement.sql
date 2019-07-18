DECLARE @job nvarchar(30) = 'DErector'

IF EXISTS (SELECT id from job where Description = @job)
BEGIN
	PRINT 'That job exist.'
END
ELSE
BEGIN
	PRINT 'That job does NOT exist.'
END