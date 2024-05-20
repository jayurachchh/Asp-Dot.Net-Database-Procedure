--Get all TaskAssign--
ALTER PROCEDURE [dbo].[Pro_SelectAllTaskAssign]
@TaskAssignStartDate VARCHAR(100)=null,
@TaskAssignCompletionDate VARCHAR(100)=null,
@ProjWiseTaskID VARCHAR(100)=null,
@EmpID VARCHAR(100)=null,
@StatusID VARCHAR(100)=null
AS
BEGIN
    SELECT
        [dbo].[TaskAssign].TaskAssignID,
		[dbo].[TaskAssign].TaskAssignStartDate,
		[dbo].[TaskAssign].TaskAssignCompletionDate,
		[dbo].[TaskAssign].Remarks,
        [dbo].[TaskAssign].ProjWiseTaskID,
		[dbo].[ProjectWiseTask].ProjWiseTaskName,
		[dbo].[TaskAssign].EmpID,
		[dbo].[Employee].EmpName,
		[dbo].[TaskAssign].StatusID,
		[dbo].[Status].StatusName,
		[dbo].[Status].StatusCssColor,
        [dbo].[TaskAssign].Created,
        [dbo].[TaskAssign].Modified
    FROM [dbo].[TaskAssign]
	INNER Join [dbo].[ProjectWiseTask]
	ON [dbo].[ProjectWiseTask].ProjWiseTaskID=[dbo].[TaskAssign].ProjWiseTaskID

	INNER Join [dbo].[Employee]
	ON [dbo].[Employee].EmpID=[dbo].[TaskAssign].EmpID

	INNER Join [dbo].[Status]
	ON [dbo].[Status].StatusID=[dbo].[TaskAssign].StatusID
	WHERE(@TaskAssignStartDate is null or TaskAssignStartDate Like '%'+@TaskAssignStartDate+'%') AND
		(@TaskAssignCompletionDate is null or TaskAssignCompletionDate Like '%'+@TaskAssignCompletionDate+'%') AND
		(@ProjWiseTaskID is null or [ProjectWiseTask].ProjWiseTaskID Like '%'+@ProjWiseTaskID+'%') AND
		(@EmpID is null or [Employee].EmpID Like '%'+@EmpID+'%') AND
		(@StatusID is null or [Status].StatusID Like '%'+@StatusID+'%')
    ORDER BY [dbo].[TaskAssign].TaskAssignID;
END;

EXEC [dbo].[Pro_SelectAllTaskAssign] '','','','','';


--GetByid TaskAssign--
ALTER PROCEDURE [dbo].[Pro_SelectTaskAssignById]
    @TaskAssignID INT
AS
BEGIN
   SELECT
        [dbo].[TaskAssign].TaskAssignID,
		[dbo].[TaskAssign].TaskAssignStartDate,
		[dbo].[TaskAssign].TaskAssignCompletionDate,
		[dbo].[TaskAssign].Remarks,
        [dbo].[TaskAssign].ProjWiseTaskID,
		[dbo].[ProjectWiseTask].ProjWiseTaskName,
		[dbo].[TaskAssign].EmpID,
		[dbo].[Employee].EmpName,
		[dbo].[TaskAssign].StatusID,
		[dbo].[Status].StatusName,
        [dbo].[TaskAssign].Created,
        [dbo].[TaskAssign].Modified
    FROM [dbo].[TaskAssign]
	INNER Join [dbo].[ProjectWiseTask]
	ON [dbo].[ProjectWiseTask].ProjWiseTaskID=[dbo].[TaskAssign].ProjWiseTaskID

	INNER Join [dbo].[Employee]
	ON [dbo].[Employee].EmpID=[dbo].[TaskAssign].EmpID

	INNER Join [dbo].[Status]
	ON [dbo].[Status].StatusID=[dbo].[TaskAssign].StatusID

	WHERE [dbo].[TaskAssign].TaskAssignID = @TaskAssignID
    ORDER BY [dbo].[TaskAssign].TaskAssignID
END;

EXEC [dbo].[Pro_SelectTaskAssignById] @TaskAssignID = 13;

--insert TaskAssign--
ALTER PROCEDURE [dbo].[Pro_InsertTaskAssign]
    @TaskAssignStartDate DATETIME,
    @TaskAssignCompletionDate DATETIME,
	@Remarks VARCHAR(100),
    @ProjWiseTaskID INT,
    @EmpID INT,
    @StatusID INT
AS
BEGIN
    INSERT INTO [dbo].[TaskAssign] 
    (
		[dbo].[TaskAssign].TaskAssignStartDate,
		[dbo].[TaskAssign].TaskAssignCompletionDate,
		[dbo].[TaskAssign].Remarks,
        [dbo].[TaskAssign].ProjWiseTaskID,
		[dbo].[TaskAssign].EmpID,
		[dbo].[TaskAssign].StatusID,
        [dbo].[TaskAssign].Created,
        [dbo].[TaskAssign].Modified
    )
    VALUES
    (
	    @TaskAssignStartDate,
		@TaskAssignCompletionDate,
		@Remarks,
		@ProjWiseTaskID,
		@EmpID ,
		@StatusID,
        GETDATE(),
        GETDATE()
    );
END;

EXEC [dbo].[Pro_InsertTaskAssign]
    @TaskAssignStartDate ='2023-11-30',
    @TaskAssignCompletionDate = '2023-11-30',
	@Remarks='none 2',
    @ProjWiseTaskID=8,
    @EmpID=7,
    @StatusID=6

--Update TaskAssign--
ALTER PROCEDURE [dbo].[Pro_UpdateTaskAssign]
    @TaskAssignID INT,
    @TaskAssignStartDate DATETIME,
    @TaskAssignCompletionDate DATETIME,
	@Remarks VARCHAR(100),
    @ProjWiseTaskID INT,
    @EmpID INT,
    @StatusID INT
AS
BEGIN
    UPDATE [dbo].[TaskAssign]
    SET
		[dbo].[TaskAssign].TaskAssignStartDate = @TaskAssignStartDate,
		[dbo].[TaskAssign].TaskAssignCompletionDate = @TaskAssignCompletionDate,
		[dbo].[TaskAssign].Remarks=@Remarks,
        [dbo].[TaskAssign].ProjWiseTaskID = @ProjWiseTaskID,
		[dbo].[TaskAssign].EmpID = @EmpID,
		[dbo].[TaskAssign].StatusID = @StatusID,
        [dbo].[TaskAssign].Modified = GETDATE()
    WHERE [dbo].[TaskAssign].TaskAssignID = @TaskAssignID;
END;

EXEC [dbo].[Pro_UpdateTaskAssign]
    @TaskAssignID = 5,
    @TaskAssignStartDate ='2023-12-25',
    @TaskAssignCompletionDate ='2023-12-26',
	@Remarks='none1',
    @ProjWiseTaskID = 8,
    @EmpID = 7,
    @StatusID = 3

-- Delete TaskAssign--
ALTER PROCEDURE [dbo].[Pro_DeleteTaskAssign]
    @TaskAssignID INT
AS
BEGIN
    DELETE FROM [dbo].[TaskAssign]
    WHERE [dbo].[TaskAssign].TaskAssignID = @TaskAssignID;
END;

EXEC [dbo].[Pro_DeleteTaskAssign] @TaskAssignID = 10;


-- Multiple Delete BY List-- 
CREATE OR ALTER PROCEDURE [dbo].[Pro_TaskAssign_MultiDeleteProcedure]
    @lstid NVARCHAR(MAX)
AS
BEGIN
    DECLARE @sql NVARCHAR(MAX)

    SET @sql = 'DELETE FROM TaskAssign WHERE TaskAssignID IN (' + @lstid + ')'
	
	EXEC sp_executesql @sql
END

EXEC [dbo].[Pro_TaskAssign_MultiDeleteProcedure] @lstid = '9,11';
