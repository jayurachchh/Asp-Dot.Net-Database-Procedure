-- Getall Task
ALTER PROCEDURE [dbo].[Pro_SelectAllTasks]
AS
BEGIN
    SELECT
        [dbo].[TaskPriority].TaskPriorityID,
        [dbo].[TaskPriority].TaskPriorityName,
		[dbo].[TaskPriority].TaskPriorityCssColor
    FROM [dbo].[TaskPriority]
    ORDER BY  [dbo].[TaskPriority].TaskPriorityName;
END;

EXEC [dbo].[Pro_SelectAllTasks];

--Getby id Task--

ALTER PROCEDURE [dbo].[Pro_SelectTaskById]
    @TaskPriorityID INT
AS
BEGIN
    SELECT
        [dbo].[TaskPriority].TaskPriorityID,
        [dbo].[TaskPriority].TaskPriorityName,
		[dbo].[TaskPriority].TaskPriorityCssColor
    FROM [dbo].[TaskPriority]
	WHERE [dbo].[TaskPriority].TaskPriorityID = @TaskPriorityID
    ORDER BY  [dbo].[TaskPriority].TaskPriorityName;
END;

EXEC [dbo].[Pro_SelectTaskById] @TaskPriorityID = 2;

-- Insert Task
ALTER PROCEDURE [dbo].[Pro_InsertTask]
    @TaskPriorityName VARCHAR(100),
	@TaskPriorityCssColor VARCHAR(100)
AS
BEGIN
    INSERT INTO [dbo].[TaskPriority] 
	(
		[dbo].[TaskPriority].TaskPriorityName,
		[dbo].[TaskPriority].TaskPriorityCssColor
	)
    VALUES 
	(
		@TaskPriorityName,
		@TaskPriorityCssColor
	);
END;

EXEC [dbo].[Pro_InsertTask] @TaskPriorityName = 'Complete Project Documentation',@TaskPriorityCssColor='red';

--Update Task
ALTER PROCEDURE [dbo].[Pro_UpdateTask]
    @TaskPriorityID INT,
    @TaskPriorityName VARCHAR(100),
	@TaskPriorityCssColor VARCHAR(100)
AS
BEGIN
    UPDATE [dbo].[TaskPriority]
    SET 
		[dbo].[TaskPriority].TaskPriorityName = @TaskPriorityName,
		[dbo].[TaskPriority].TaskPriorityCssColor=@TaskPriorityCssColor
    WHERE [dbo].[TaskPriority].TaskPriorityID = @TaskPriorityID;
END;

EXEC [dbo].[Pro_UpdateTask] @TaskPriorityID = 2, @TaskPriorityName = 'Review Code',@TaskPriorityCssColor='red';

--Delete Task
ALTER PROCEDURE [dbo].[Pro_DeleteTask]
    @TaskPriorityID INT
AS
BEGIN
    DELETE FROM [dbo].[TaskPriority]
    WHERE [dbo].[TaskPriority].TaskPriorityID = @TaskPriorityID;
END;

EXEC [dbo].[Pro_DeleteTask] @TaskPriorityID = 3;





