-- Get all Project
ALTER PROCEDURE [dbo].[Pro_SelectAllProjects]
@ProjName VARCHAR(100)=null,
@ProjStartDate VARCHAR(100) =null,
@ProjEndDate VARCHAR(100) =null,
@StatusID VARCHAR(100) =null,
@EmpID VARCHAR(100)=null
AS
BEGIN
    SELECT
        [dbo].[Project].ProjID,
        [dbo].[Project].ProjName,
        [dbo].[Project].ProjDescription,
        [dbo].[Project].ProjStartDate,
        [dbo].[Project].ProjEndDate,
        [dbo].[Project].ProjTotalCost,
        [dbo].[Project].EmpID,
		[dbo].[Employee].EmpName,
        [dbo].[Project].StatusID,
		[dbo].[Status].StatusName,
		[dbo].[Status].StatusCssColor,
        [dbo].[Project].ProjSource,
        [dbo].[Project].ProjDocumentation,
        [dbo].[Project].ProjCreated,
        [dbo].[Project].ProjModified
    FROM [dbo].[Project]
	INNER JOIN [dbo].[Status]
	ON [dbo].[Status].[StatusID]=[dbo].[Project].[StatusID]
	INNER JOIN [dbo].[Employee]
	ON [dbo].[Employee].[EmpID]=[dbo].[Project].[EmpID]
		WHERE(@ProjName is null or ProjName Like '%'+@ProjName+'%') AND
		(@ProjStartDate is null or ProjStartDate Like '%'+@ProjStartDate+'%') AND
		(@ProjEndDate is null or ProjEndDate Like '%'+@ProjEndDate+'%') AND
		(@StatusID is null or [Status].StatusID Like '%'+@StatusID+'%') AND
		(@EmpID is null or [Employee].EmpID Like '%'+@EmpID+'%') 
    ORDER BY [dbo].[Project].ProjName;
END;

EXEC [dbo].[Pro_SelectAllProjects]'abc','','','','';

-- Get allUpcoming Project
ALTER PROCEDURE [dbo].[Pro_SelectAllUpcomingProjects]
@ProjName VARCHAR(100)=null,
@ProjStartDate VARCHAR(100) =null,
@ProjEndDate VARCHAR(100) =null,
@StatusID VARCHAR(100) =null,
@EmpID VARCHAR(100)=null
AS
BEGIN
    SELECT
        [dbo].[Project].ProjID,
        [dbo].[Project].ProjName,
        [dbo].[Project].ProjDescription,
        [dbo].[Project].ProjStartDate,
        [dbo].[Project].ProjEndDate,
        [dbo].[Project].ProjTotalCost,
        [dbo].[Project].EmpID,
		[dbo].[Employee].EmpName,
        [dbo].[Project].StatusID,
		[dbo].[Status].StatusName,
		[dbo].[Status].StatusCssColor,
        [dbo].[Project].ProjSource,
        [dbo].[Project].ProjDocumentation,
        [dbo].[Project].ProjCreated,
        [dbo].[Project].ProjModified
    FROM [dbo].[Project]
	INNER JOIN [dbo].[Status]
	ON [dbo].[Status].[StatusID]=[dbo].[Project].[StatusID]
	INNER JOIN [dbo].[Employee]
	ON [dbo].[Employee].[EmpID]=[dbo].[Project].[EmpID]
		WHERE [dbo].Project.StatusID=3 AND(@ProjName is null or ProjName Like '%'+@ProjName+'%') AND
		(@ProjStartDate is null or ProjStartDate Like '%'+@ProjStartDate+'%') AND
		(@ProjEndDate is null or ProjEndDate Like '%'+@ProjEndDate+'%') AND
		(@StatusID is null or [Status].StatusID Like '%'+@StatusID+'%') AND
		(@EmpID is null or [Employee].EmpID Like '%'+@EmpID+'%') 
    ORDER BY [dbo].[Project].ProjName;
END;

EXEC [dbo].[Pro_SelectAllUpcomingProjects]'project','','','','';

-- Get allCurrent Project
ALTER PROCEDURE [dbo].[Pro_SelectAllCurrentProjects]
@ProjName VARCHAR(100)=null,
@ProjStartDate VARCHAR(100) =null,
@ProjEndDate VARCHAR(100) =null,
@StatusID VARCHAR(100) =null,
@EmpID VARCHAR(100)=null
AS
BEGIN
    SELECT
        [dbo].[Project].ProjID,
        [dbo].[Project].ProjName,
        [dbo].[Project].ProjDescription,
        [dbo].[Project].ProjStartDate,
        [dbo].[Project].ProjEndDate,
        [dbo].[Project].ProjTotalCost,
        [dbo].[Project].EmpID,
		[dbo].[Employee].EmpName,
        [dbo].[Project].StatusID,
		[dbo].[Status].StatusName,
		[dbo].[Status].StatusCssColor,
        [dbo].[Project].ProjSource,
        [dbo].[Project].ProjDocumentation,
        [dbo].[Project].ProjCreated,
        [dbo].[Project].ProjModified
    FROM [dbo].[Project]
	INNER JOIN [dbo].[Status]
	ON [dbo].[Status].[StatusID]=[dbo].[Project].[StatusID]
	INNER JOIN [dbo].[Employee]
	ON [dbo].[Employee].[EmpID]=[dbo].[Project].[EmpID]
		WHERE [dbo].Project.StatusID=6 AND(@ProjName is null or ProjName Like '%'+@ProjName+'%') AND
		(@ProjStartDate is null or ProjStartDate Like '%'+@ProjStartDate+'%') AND
		(@ProjEndDate is null or ProjEndDate Like '%'+@ProjEndDate+'%') AND
		(@StatusID is null or [Status].StatusID Like '%'+@StatusID+'%') AND
		(@EmpID is null or [Employee].EmpID Like '%'+@EmpID+'%') 
    ORDER BY [dbo].[Project].ProjName;
END;

EXEC [dbo].[Pro_SelectAllCurrentProjects]'project','','','','';

-- Get allComplete Project
ALTER PROCEDURE [dbo].[Pro_SelectAllCompleteProjects]
@ProjName VARCHAR(100)=null,
@ProjStartDate VARCHAR(100) =null,
@ProjEndDate VARCHAR(100) =null,
@StatusID VARCHAR(100) =null,
@EmpID VARCHAR(100)=null
AS
BEGIN
    SELECT
        [dbo].[Project].ProjID,
        [dbo].[Project].ProjName,
        [dbo].[Project].ProjDescription,
        [dbo].[Project].ProjStartDate,
        [dbo].[Project].ProjEndDate,
        [dbo].[Project].ProjTotalCost,
        [dbo].[Project].EmpID,
		[dbo].[Employee].EmpName,
        [dbo].[Project].StatusID,
		[dbo].[Status].StatusName,
		[dbo].[Status].StatusCssColor,
        [dbo].[Project].ProjSource,
        [dbo].[Project].ProjDocumentation,
        [dbo].[Project].ProjCreated,
        [dbo].[Project].ProjModified
    FROM [dbo].[Project]
	INNER JOIN [dbo].[Status]
	ON [dbo].[Status].[StatusID]=[dbo].[Project].[StatusID]
	INNER JOIN [dbo].[Employee]
	ON [dbo].[Employee].[EmpID]=[dbo].[Project].[EmpID]
		WHERE [dbo].Project.StatusID=7 AND(@ProjName is null or ProjName Like '%'+@ProjName+'%') AND
		(@ProjStartDate is null or ProjStartDate Like '%'+@ProjStartDate+'%') AND
		(@ProjEndDate is null or ProjEndDate Like '%'+@ProjEndDate+'%') AND
		(@StatusID is null or [Status].StatusID Like '%'+@StatusID+'%') AND
		(@EmpID is null or [Employee].EmpID Like '%'+@EmpID+'%') 
    ORDER BY [dbo].[Project].ProjName;
END;

EXEC [dbo].[Pro_SelectAllCompleteProjects]'project','','','','';

-- Getbyid Project
ALTER PROCEDURE [dbo].[Pro_SelectProjectById]
    @ProjID INT
AS
BEGIN
    SELECT
        [dbo].[Project].ProjID,
        [dbo].[Project].ProjName,
        [dbo].[Project].ProjDescription,
        [dbo].[Project].ProjStartDate,
        [dbo].[Project].ProjEndDate,
        [dbo].[Project].ProjTotalCost,
        [dbo].[Project].EmpID,
		[dbo].[Employee].EmpName,
        [dbo].[Project].StatusID,
		[dbo].[Status].StatusName,
        [dbo].[Project].ProjSource,
        [dbo].[Project].ProjDocumentation,
        [dbo].[Project].ProjCreated,
        [dbo].[Project].ProjModified
    FROM [dbo].[Project]
	INNER JOIN [dbo].[Status]
	ON [dbo].[Status].[StatusID]=[dbo].[Project].[StatusID]
	INNER JOIN [dbo].[Employee]
	ON [dbo].[Employee].[EmpID]=[dbo].[Project].[EmpID]
    WHERE [dbo].[Project].ProjID = @ProjID
    ORDER BY [dbo].[Project].ProjName;
END;

EXEC [dbo].[Pro_SelectProjectById] @ProjId = 9;

--insert Project
ALTER PROCEDURE [dbo].[Pro_InsertProject]
    @ProjName VARCHAR(100),
    @ProjDescription VARCHAR(100),
    @ProjStartDate DATETIME,
    @ProjEndDate DATETIME,
    @ProjTotalCost VARCHAR(100),
    @StatusID INT,
	@EmpID INT,
    @ProjSource VARCHAR(100),
    @ProjDocumentation VARCHAR(100)
AS
BEGIN
    INSERT INTO [dbo].[Project]
    (
        [dbo].[Project].ProjName,
        [dbo].[Project].ProjDescription,
        [dbo].[Project].ProjStartDate,
        [dbo].[Project].ProjEndDate,
        [dbo].[Project].ProjTotalCost,
        [dbo].[Project].EmpID,
        [dbo].[Project].StatusID,
        [dbo].[Project].ProjSource,
        [dbo].[Project].ProjDocumentation,
        [dbo].[Project].ProjCreated,
        [dbo].[Project].ProjModified
    )
    VALUES
    (
        @ProjName,
        @ProjDescription,
        @ProjStartDate,
        @ProjEndDate,
        @ProjTotalCost,
        @EmpID,
        @StatusID,
        @ProjSource,
        @ProjDocumentation,
        GETDATE(),
        GETDATE()
    );
END;

EXEC [dbo].[Pro_InsertProject]
    @ProjName = 'Project X',
    @ProjDescription = 'Description of Project X',
    @ProjStartDate = '2023-01-01',
    @ProjEndDate = '2023-12-31',
    @ProjTotalCost = '100000',
    @EmpID=7,
    @StatusID = 3,
    @ProjSource = 'Internal',
    @ProjDocumentation = 'ProjectX_Docs';

--Update Project
ALTER PROCEDURE [dbo].[Pro_UpdateProject]
    @ProjID INT,
    @ProjName VARCHAR(100),
    @ProjDescription VARCHAR(100),
    @ProjStartDate DATETIME,
    @ProjEndDate DATETIME,
    @ProjTotalCost VARCHAR(100),
    @StatusID INT,
	@EmpID INT,
    @ProjSource VARCHAR(100),
    @ProjDocumentation VARCHAR(100)
AS
BEGIN
    UPDATE [dbo].[Project]
    SET
        [dbo].[Project].ProjName = @ProjName,
        [dbo].[Project].ProjDescription = @ProjDescription,
        [dbo].[Project].ProjStartDate = @ProjStartDate,
        [dbo].[Project].ProjEndDate = @ProjEndDate,
        [dbo].[Project].ProjTotalCost = @ProjTotalCost,
        [dbo].[Project].EmpID = @EmpID,
        [dbo].[Project].StatusID = @StatusID,
        [dbo].[Project].ProjSource = @ProjSource,
        [dbo].[Project].ProjDocumentation = @ProjDocumentation,
        [dbo].[Project].ProjModified = GETDATE()
    WHERE [dbo].[Project].ProjID = @ProjID;
END;

EXEC [dbo].[Pro_UpdateProject]
    @ProjID = 9,
    @ProjName = 'Updated Project X',
    @ProjDescription = 'Updated Description of Project X',
    @ProjStartDate = '2023-01-01',
    @ProjEndDate = '2023-12-31',
    @ProjTotalCost = '120000',
    @EmpID = 7,
    @StatusID = 2,
    @ProjSource = 'External',
    @ProjDocumentation = 'Updated_ProjectX_Docs';

--  Delete Employee
ALTER PROCEDURE [dbo].[Pro_DeleteProject]
    @ProjID INT
AS
BEGIN
    DELETE FROM [dbo].[Project]
    WHERE [dbo].[Project].ProjID = @ProjID;
END;

EXEC [dbo].[Pro_DeleteProject] @ProjID = 3;

-- Multiple Delete BY List-- 
 ALTER PROCEDURE [dbo].[Pro_Project_MultiDeleteProcedure]
    @lstid NVARCHAR(MAX)
AS
BEGIN
    DECLARE @sql NVARCHAR(MAX)

    SET @sql = 'DELETE FROM Project WHERE ProjID IN (' + @lstid + ')'
	EXEC sp_executesql @sql
	print(@sql);
END

EXEC [dbo].[Pro_Project_MultiDeleteProcedure] '24,26';

