--Get all ProjectWiseTask--
CREATE OR ALTER PROCEDURE [dbo].[Pro_SelectAllProjWiseTasks]
@ProjID VARCHAR(100)=Null,
@ProjWiseTaskName VARCHAR(100)=Null,
@ProjWiseTaskNumber VARCHAR(100)=Null,
@ProjWiseTaskStartDate VARCHAR(100)=Null,
@ProjWiseTaskEndDate VARCHAR(100)=Null
AS
BEGIN
    SELECT
        [dbo].[ProjectWiseTask].ProjWiseTaskID,
        [dbo].[ProjectWiseTask].ProjID,
		[dbo].[Project].ProjName,
        [dbo].[ProjectWiseTask].ProjWiseTaskNumber,
        [dbo].[ProjectWiseTask].ProjWiseTaskName,
        [dbo].[ProjectWiseTask].ProjWiseTaskStartDate,
		[dbo].[ProjectWiseTask].ProjWiseTaskEndDate,
        [dbo].[ProjectWiseTask].ProjectWiseTaskEmployeeNumber,
        [dbo].[ProjectWiseTask].Created,
        [dbo].[ProjectWiseTask].Modified
    FROM [dbo].[ProjectWiseTask]
	INNER Join [dbo].[Project]
	ON [dbo].[Project].ProjID=[dbo].[ProjectWiseTask].ProjID
		WHERE(@ProjID is null or [Project].ProjID Like '%'+@ProjID+'%') AND
		(@ProjWiseTaskName is null or ProjWiseTaskName Like '%'+@ProjWiseTaskName+'%') AND
		(@ProjWiseTaskNumber is null or ProjWiseTaskNumber Like '%'+@ProjWiseTaskNumber+'%') AND
		(@ProjWiseTaskStartDate is null or ProjWiseTaskStartDate Like '%'+@ProjWiseTaskStartDate+'%') AND
		(@ProjWiseTaskEndDate is null or ProjWiseTaskEndDate Like '%'+@ProjWiseTaskEndDate+'%')
    ORDER BY [dbo].[ProjectWiseTask].ProjWiseTaskName;
END;

EXEC [dbo].[Pro_SelectAllProjWiseTasks]'36','','','','';

--GetByid ProjectWiseTask--
ALTER PROCEDURE [dbo].[Pro_SelectProjWiseTaskById]
    @ProjWiseTaskID INT
AS
BEGIN
  SELECT
        [dbo].[ProjectWiseTask].ProjWiseTaskID,
        [dbo].[ProjectWiseTask].ProjID,
		[dbo].[Project].ProjName,
        [dbo].[ProjectWiseTask].ProjWiseTaskNumber,
        [dbo].[ProjectWiseTask].ProjWiseTaskName,
        [dbo].[ProjectWiseTask].ProjWiseTaskStartDate,
		[dbo].[ProjectWiseTask].ProjWiseTaskEndDate,
		[dbo].[ProjectWiseTask].ProjectWiseTaskEmployeeNumber,
        [dbo].[ProjectWiseTask].Created,
        [dbo].[ProjectWiseTask].Modified
    FROM [dbo].[ProjectWiseTask]
	INNER Join [dbo].[Project]
	ON [dbo].[Project].ProjID=[dbo].[ProjectWiseTask].ProjID
    WHERE [dbo].[ProjectWiseTask].ProjWiseTaskID = @ProjWiseTaskID;
END;

EXEC [dbo].[Pro_SelectProjWiseTaskById] @ProjWiseTaskID = 6;

--insert ProjectWiseTask--
ALTER PROCEDURE [dbo].[Pro_InsertProjWiseTask]
    @ProjID INT,
    @ProjWiseTaskNumber VARCHAR(100),
    @ProjWiseTaskName VARCHAR(100),
    @ProjWiseTaskStartDate DATETIME,
	@ProjWiseTaskEndDate DATETIME,
    @ProjectWiseTaskEmployeeNumber Int
AS
BEGIN
    INSERT INTO [dbo].[ProjectWiseTask]
    (
        [dbo].[ProjWiseTask].ProjID,
        [dbo].[ProjWiseTask].ProjWiseTaskNumber,
        [dbo].[ProjWiseTask].ProjWiseTaskName,
        [dbo].[ProjWiseTask].ProjWiseTaskStartDate,
		[dbo].[ProjWiseTask].ProjWiseTaskEndDate,
        [dbo].[ProjWiseTask].ProjectWiseTaskEmployeeNumber,
        [dbo].[ProjWiseTask].Created,
        [dbo].[ProjWiseTask].Modified
    )
    VALUES
    (
        @ProjID,
        @ProjWiseTaskNumber,
        @ProjWiseTaskName,
		@ProjWiseTaskStartDate,
        @ProjWiseTaskEndDate,
        @ProjectWiseTaskEmployeeNumber,
        GETDATE(),
        GETDATE()
    );
END;

EXEC [dbo].[Pro_InsertProjWiseTask]
    @ProjID = 9,
    @ProjWiseTaskNumber = 'Task006',
    @ProjWiseTaskName = 'Task Name',
	@ProjWiseTaskStartDate='2023-01-01',
	@ProjWiseTaskEndDate='2023-12-31',
    @ProjectWiseTaskEmployeeNumber = 7;

-- Update ProjectWiseTask--
ALTER PROCEDURE [dbo].[Pro_UpdateProjWiseTask]
    @ProjWiseTaskID INT,
    @ProjID INT,
    @ProjWiseTaskNumber VARCHAR(100),
    @ProjWiseTaskName VARCHAR(100),
   @ProjWiseTaskStartDate DATETIME,
	@ProjWiseTaskEndDate DATETIME,
     @ProjectWiseTaskEmployeeNumber Int
AS
BEGIN
    UPDATE [dbo].[ProjectWiseTask]
    SET
        [dbo].[ProjectWiseTask].ProjID = @ProjID,
        [dbo].[ProjectWiseTask].ProjWiseTaskNumber = @ProjWiseTaskNumber,
        [dbo].[ProjectWiseTask].ProjWiseTaskName = @ProjWiseTaskName,
        [dbo].[ProjectWiseTask].ProjWiseTaskStartDate = @ProjWiseTaskStartDate,
		[dbo].[ProjectWiseTask].ProjWiseTaskEndDate = @ProjWiseTaskEndDate,
        [dbo].[ProjectWiseTask].ProjectWiseTaskEmployeeNumber  =  @ProjectWiseTaskEmployeeNumber,
        [dbo].[ProjectWiseTask].Modified = GETDATE()
    WHERE [dbo].[ProjectWiseTask].ProjWiseTaskID = @ProjWiseTaskID;
END;

EXEC [dbo].[Pro_UpdateProjWiseTask]
    @ProjWiseTaskID = 10,
    @ProjID = 9,
    @ProjWiseTaskNumber = 'Task002',
    @ProjWiseTaskName = 'Updated Task Name',
    @ProjWiseTaskStartDate='2023-01-01',
	@ProjWiseTaskEndDate='2023-12-31',
     @ProjectWiseTaskEmployeeNumber = 7;

-- Delete ProjectWiseTask--
ALTER PROCEDURE [dbo].[Pro_DeleteProjWiseTask]
    @ProjWiseTaskID INT
AS
BEGIN
    DELETE FROM [dbo].[ProjectWiseTask]
    WHERE [dbo].[ProjectWiseTask].ProjWiseTaskID = @ProjWiseTaskID;
END;

EXEC [dbo].[Pro_DeleteProjWiseTask] @ProjWiseTaskID = 3;

-- Multiple Delete BY List-- 
ALTER PROCEDURE [dbo].[Pro_ProjectWiseTask_MultiDeleteProcedure]
    @lstid NVARCHAR(MAX)
AS
BEGIN
    DECLARE @sql NVARCHAR(MAX)

    SET @sql = 'DELETE FROM ProjectWiseTask WHERE ProjWiseTaskID IN (' + @lstid + ')'
	EXEC sp_executesql @sql
	print(@sql);
END

EXEC [dbo].[Pro_ProjectWiseTask_MultiDeleteProcedure] '30';