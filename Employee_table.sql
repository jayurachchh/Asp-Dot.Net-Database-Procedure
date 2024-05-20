-- Get All Employee--
ALTER PROCEDURE [dbo].[Pro_SelectAllEmployees]
@EmpName varchar(100)=null,
@EmpCode varchar(100)=null,
@EmpPosition  varchar(100)=null,
@EmpDepartment  varchar(100)=null,
@EmpManagerId  varchar(100)=null
AS
BEGIN
    SELECT
		 [dbo].[Employee].EmpID,
		 CAST([dbo].[Employee].EmpCode + ' - '  + [dbo].[Employee].EmpName AS nvarchar(100)) AS EmpName,
		 [dbo].[Employee].EmpCode,
		 [dbo].[Employee].EmpPosition,
		 [dbo].[Employee].EmpContact,
		 [dbo].[Employee].EmpEmail,
		 [dbo].[Employee].EmpDepartment,
		 [dbo].[Employee].EmpDateOfBirth,
		 [dbo].[Employee].EmpProfileImage,
		 [dbo].[Employee].EmpProofImage,
		 [dbo].[Employee].EmpProofName,
		 [dbo].[Employee].EmpPerHourCharge,
		 [dbo].[Employee].EmpManagerId,
		 [dbo].[Employee].EmpGitLink,
		 [dbo].[Employee].EmpCreated,
		 [dbo].[Employee].EmpModified
    FROM [dbo].[Employee]
	WHERE	(@EmpName is null or EmpName Like '%'+@EmpName+'%') AND
			(@EmpCode is null or EmpCode Like '%'+@EmpCode+'%') AND
			(@EmpPosition is null or EmpPosition Like '%'+@EmpPosition+'%') AND
			(@EmpDepartment is null or EmpDepartment Like '%'+@EmpDepartment+'%') AND
			(@EmpManagerId is null or EmpManagerId Like '%'+@EmpManagerId+'%')
	ORDER BY
		 [dbo].[Employee].[EmpName]
END;

EXEC [dbo].[Pro_SelectAllEmployees] '','','','','1'

--GetBy EmployeenotassignTask
Alter Procedure [dbo].[Pro_SelectnotassignTask]
@EmpName varchar(100)=null,
@EmpCode varchar(100)=null,
@EmpPosition  varchar(100)=null,
@EmpDepartment  varchar(100)=null,
@EmpManagerId  varchar(100)=null
As
Begin
		SELECT 
			e.EmpID,
			CAST(e.EmpCode + ' - '  +e.EmpName AS nvarchar(100)) AS EmpName,
			e.EmpCode,
			e.EmpPosition,
			e.EmpContact,
			e.EmpEmail,
			e.EmpDepartment,
			e.EmpDateOfBirth,
			e.EmpProfileImage,
			e.EmpProofImage,
			e.EmpProofName,
			e.EmpPerHourCharge,
			e.EmpManagerId,
			e.EmpGitLink,
			e.EmpCreated,
			e.EmpModified
		FROM Employee e 
		LEFT JOIN TaskAssign ta ON e.EmpID = ta.EmpID
		WHERE ta.EmpID IS NULL AND
			(@EmpName is null or EmpName Like '%'+@EmpName+'%') AND
			(@EmpCode is null or EmpCode Like '%'+@EmpCode+'%') AND
			(@EmpPosition is null or EmpPosition Like '%'+@EmpPosition+'%') AND
			(@EmpDepartment is null or EmpDepartment Like '%'+@EmpDepartment+'%') AND
			(@EmpManagerId is null or EmpManagerId Like '%'+@EmpManagerId+'%')
End;
EXEC [dbo].[Pro_SelectnotassignTask]  'raj','','','',''

--GetBy EmployeeassignTask
Alter Procedure [dbo].[Pro_SelectassignTask]
@EmpName varchar(100)=null,
@EmpCode varchar(100)=null,
@EmpPosition  varchar(100)=null,
@EmpDepartment  varchar(100)=null,
@EmpManagerId  varchar(100)=null
As
Begin
		SELECT
			e.EmpID,
			CAST(e.EmpCode + ' - '  +e.EmpName AS nvarchar(100)) AS EmpName,
			e.EmpCode,
			e.EmpPosition,
			e.EmpContact,
			e.EmpEmail,
			e.EmpDepartment,
			e.EmpDateOfBirth,
			e.EmpProfileImage,
			e.EmpProofImage,
			e.EmpProofName,
			e.EmpPerHourCharge,
			e.EmpManagerId,
			e.EmpGitLink,
			e.EmpCreated,
			e.EmpModified
		FROM Employee e
		INNER JOIN TaskAssign ta ON e.EmpID = ta.EmpID AND
			(@EmpName is null or EmpName Like '%'+@EmpName+'%') AND
			(@EmpCode is null or EmpCode Like '%'+@EmpCode+'%') AND
			(@EmpPosition is null or EmpPosition Like '%'+@EmpPosition+'%') AND
			(@EmpDepartment is null or EmpDepartment Like '%'+@EmpDepartment+'%') AND
			(@EmpManagerId is null or EmpManagerId Like '%'+@EmpManagerId+'%')
End;
EXEC [dbo].[Pro_SelectassignTask] 'dev','','','',''




--GetByID Employee--
ALTER PROCEDURE [dbo].[Pro_SelectEmployeeById]
    @EmpID INT
AS
BEGIN
    SELECT
        [dbo].[Employee].EmpID,
        [dbo].[Employee].EmpName,
        [dbo].[Employee].EmpCode,
        [dbo].[Employee].EmpPosition,
        [dbo].[Employee].EmpContact,
		[dbo].[Employee].EmpEmail,
        [dbo].[Employee].EmpDepartment,
        [dbo].[Employee].EmpDateOfBirth,
        [dbo].[Employee].EmpProfileImage,
		[dbo].[Employee].EmpProofName,
        [dbo].[Employee].EmpProofImage,
        [dbo].[Employee].EmpPerHourCharge,
        [dbo].[Employee].EmpManagerId,
		[dbo].[Employee].EmpGitLink,
        [dbo].[Employee].EmpCreated,
        [dbo].[Employee].EmpModified
    FROM [dbo].[Employee]
    WHERE [dbo].[Employee].EmpID = @EmpID
	ORDER BY
		[dbo].[Employee].[EmpName]
END;

EXEC [dbo].[Pro_SelectEmployeeById] @EmpID = 7;

ALTER PROCEDURE [dbo].[Pro_SelectEmployeeByEmployee_manager] 
AS
BEGIN
    SELECT
        [dbo].[Employee].EmpID,
        [dbo].[Employee].EmpName,
        [dbo].[Employee].EmpCode,
        [dbo].[Employee].EmpPosition,
        [dbo].[Employee].EmpContact,
		[dbo].[Employee].EmpEmail,
        [dbo].[Employee].EmpDepartment,
        [dbo].[Employee].EmpDateOfBirth,
        [dbo].[Employee].EmpProfileImage,
		[dbo].[Employee].EmpProofName,
        [dbo].[Employee].EmpProofImage,
        [dbo].[Employee].EmpPerHourCharge,
        [dbo].[Employee].EmpManagerId,
		[dbo].[Employee].EmpGitLink,
        [dbo].[Employee].EmpCreated,
        [dbo].[Employee].EmpModified
    FROM [dbo].[Employee]
    WHERE [dbo].[Employee].EmpManagerId ='True'
	ORDER BY
		[dbo].[Employee].[EmpName]
END;

EXEC [dbo].[Pro_SelectEmployeeByEmployee_manager]

--Insert Employee--
ALTER PROCEDURE [dbo].[Pro_InsertEmployee]
    @EmpName VARCHAR(100),
    @EmpCode VARCHAR(100),
    @EmpPosition VARCHAR(100),
    @EmpContact VARCHAR(100),
	@EmpEmail VARCHAR(100),
    @EmpDepartment VARCHAR(100),
    @EmpDateOfBirth VARCHAR(100),
    @EmpProfileImage VARCHAR(100),
    @EmpProofImage VARCHAR(100),
	@EmpProofName VARCHAR(100),
    @EmpPerHourCharge VARCHAR(100),
    @EmpManagerId VARCHAR(100),
	@EmpGitLink VARCHAR(100)
AS
BEGIN
    INSERT INTO [dbo].[Employee]
    (
        [dbo].[Employee].EmpName,
        [dbo].[Employee].EmpCode,
        [dbo].[Employee].EmpPosition,
        [dbo].[Employee].EmpContact,
		[dbo].[Employee].EmpEmail,
        [dbo].[Employee].EmpDepartment,
        [dbo].[Employee].EmpDateOfBirth,
        [dbo].[Employee].EmpProfileImage,
        [dbo].[Employee].EmpProofImage,
		[dbo].[Employee].EmpProofName,
        [dbo].[Employee].EmpPerHourCharge,
        [dbo].[Employee].EmpManagerId,
		[dbo].[Employee].EmpGitLink,
        [dbo].[Employee].EmpCreated,
        [dbo].[Employee].EmpModified
    )
    VALUES
    (
        @EmpName,
        @EmpCode,
        @EmpPosition,
        @EmpContact,
		@EmpEmail,
        @EmpDepartment,
        @EmpDateOfBirth,
        @EmpProfileImage,
        @EmpProofImage,
		@EmpProofName,
        @EmpPerHourCharge,
        @EmpManagerId,
		@EmpGitLink,
        GETDATE(),
        GETDATE()
    );
END;

EXEC [dbo].[Pro_InsertEmployee]
    @EmpName = 'Jay',
    @EmpCode = 'JD001',
    @EmpPosition = 'Developer',
    @EmpContact = '1234567890',
	@EmpEmail='jayu@gmail.com',
    @EmpDepartment = 'IT',
    @EmpDateOfBirth = '1990-01-01',
    @EmpProfileImage = 'profile.jpg',
    @EmpProofImage = 'proof.jpg',
	@EmpProofName='aadhar',
    @EmpPerHourCharge = '50',
    @EmpManagerId = 'true',
	@EmpGitLink='abc';


--Update Employee--
ALTER PROCEDURE [dbo].[Pro_UpdateEmployee]
    @EmpID INT,
    @EmpName VARCHAR(100),
    @EmpCode VARCHAR(100),
    @EmpPosition VARCHAR(100),
    @EmpContact VARCHAR(100),
	@EmpEmail VARCHAR(100),
    @EmpDepartment VARCHAR(100),
    @EmpDateOfBirth VARCHAR(100),
    @EmpProfileImage VARCHAR(100),
    @EmpProofImage VARCHAR(100),
	@EmpProofName VARCHAR(100),
    @EmpPerHourCharge VARCHAR(100),
    @EmpManagerId VARCHAR(100),
	@EmpGitLink VARCHAR(100)
AS
BEGIN
    UPDATE [dbo].[Employee]
    SET
        [dbo].[Employee].EmpName = @EmpName,
        [dbo].[Employee].EmpCode = @EmpCode,
        [dbo].[Employee].EmpPosition = @EmpPosition,
        [dbo].[Employee].EmpContact = @EmpContact,
		[dbo].[Employee].EmpEmail = @EmpEmail,
        [dbo].[Employee].EmpDepartment = @EmpDepartment,
        [dbo].[Employee].EmpDateOfBirth = @EmpDateOfBirth,
        [dbo].[Employee].EmpProfileImage = @EmpProfileImage,
        [dbo].[Employee].EmpProofImage = @EmpProofImage,
		[dbo].[Employee].EmpProofName=@EmpProofName,
        [dbo].[Employee].EmpPerHourCharge = @EmpPerHourCharge,
        [dbo].[Employee].EmpManagerId = @EmpManagerId,
		[dbo].[Employee].EmpGitLink = @EmpGitLink,
        [dbo].[Employee].EmpModified = GETDATE()
    WHERE EmpID = @EmpID;
END;

EXEC [dbo].[Pro_UpdateEmployee]
    @EmpID = 1025,
    @EmpName = 'Updated John Doe',
    @EmpCode = 'JD002',
    @EmpPosition = 'Senior Developer',
    @EmpContact = '9876543210',
	@EmpEmail='jayu@gmail.com',
    @EmpDepartment = 'Engineering',
    @EmpDateOfBirth = '1990-01-01',
    @EmpProfileImage = 'updated_profile.jpg',
    @EmpProofImage = 'updated_proof.jpg',
	@EmpProofName='aadhar',
    @EmpPerHourCharge = '60',
    @EmpManagerId = '1014',
	@EmpGitLink='abc';


--Delete EmployeeByid--
ALTER PROCEDURE [dbo].[Pro_DeleteEmployee]
    @EmpID INT
AS
BEGIN
    DELETE FROM [dbo].[Employee]
    WHERE EmpID = @EmpID;
END;

EXEC [dbo].[APi_DeleteEmployee] @EmpID = 1;


-- Multiple Delete BY List-- 
ALTER PROCEDURE [dbo].[Pro_Employee_MultiDeleteProcedure]
    @lstid NVARCHAR(MAX)
AS
BEGIN
    DECLARE @sql NVARCHAR(MAX)

    SET @sql = 'DELETE FROM Employee WHERE EmpID IN (' + @lstid + ')'
	
	EXEC sp_executesql @sql
END

EXEC [dbo].[Pro_Employee_MultiDeleteProcedure] @lstid = '1046,1047';







