-- Get all Status
ALTER PROCEDURE [dbo].[Pro_SelectAllStatus]
AS
BEGIN
    SELECT
        [dbo].[Status].StatusID,
        [dbo].[Status].StatusName,
		[dbo].[Status].StatusCssColor
    FROM [dbo].[Status]
    ORDER BY [dbo].[Status].StatusName;
END;

EXEC [dbo].[Pro_SelectAllStatus];

-- Getbyid Status
ALTER PROCEDURE [dbo].[Pro_SelectStatusById]
    @StatusID INT
AS
BEGIN
    SELECT
        [dbo].[Status].StatusID,
        [dbo].[Status].StatusName,
		[dbo].[Status].StatusCssColor
    FROM [dbo].[Status]
    WHERE [dbo].[Status].[StatusID] = @StatusID
    ORDER BY [dbo].[Status].StatusName;
END;

EXEC [dbo].[Pro_SelectStatusById] @StatusId = 3;

--Insert Status--
ALTER PROCEDURE [dbo].[Pro_InsertStatus]
    @StatusName VARCHAR(100),
	@StatusCssColor VARCHAR(100)
AS
BEGIN
    INSERT INTO [dbo].[Status] 
	(
		[dbo].[Status].StatusName,
		[dbo].[Status].StatusCssColor
	)
    VALUES 
	(
		@StatusName,
		@StatusCssColor
	);
END;

EXEC [dbo].[Pro_InsertStatus] @StatusName = 'upcoming',@StatusCssColor='Green';

--Update Status
ALTER PROCEDURE [dbo].[Pro_UpdateStatus]
    @StatusID INT,
    @StatusName VARCHAR(100),
	@StatusCssColor VARCHAR(100)
AS
BEGIN
    UPDATE [dbo].[Status]
    SET 
	[dbo].[Status].StatusName = @StatusName,
	[dbo].[Status].StatusCssColor= @StatusCssColor 
    WHERE [dbo].[Status].StatusID = @StatusID;
END;

EXEC [dbo].[Pro_UpdateStatus] @StatusId = 4, @StatusName = 'Inactive',@StatusCssColor='Red';

--Delete byid Status
ALTER PROCEDURE [dbo].[Pro_DeleteStatus]
    @StatusID INT
AS
BEGIN
    DELETE FROM [dbo].[Status]
    WHERE [dbo].[Status].StatusID = @StatusID;
END;

EXEC [dbo].[Pro_DeleteStatus] @StatusID = 4;










