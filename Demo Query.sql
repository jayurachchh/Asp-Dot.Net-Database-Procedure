ALTER PROCEDURE [dbo].[PR_EMP_Employee_Delete]

        @EmployeeID			INT

AS

SET NOCOUNT ON;
BEGIN TRY
BEGIN TRAN

DELETE FROM [dbo].[EMP_Employee]
WHERE [dbo].[EMP_Employee].[EmployeeID] = @EmployeeID

COMMIT TRAN
END TRY

BEGIN CATCH
IF @@TRANCOUNT > 0
BEGIN
    ROLLBACK TRAN
END
;THROW

END CATCH
			
ALTER PROCEDURE [dbo].[PR_EMP_Employee_Insert]

		@EmployeeID				INT OUTPUT,
        @EmployeeName			NVARCHAR(500),
        @EmployeeMobileNo		NVARCHAR(50),
        @EmployeeEmailID		NVARCHAR(50),
        @DepartmentID			INT,
        @DesignationID			INT,
        @Salary					DECIMAL(18,2)

AS

SET NOCOUNT ON;

BEGIN TRY
BEGIN TRAN

INSERT [dbo].[EMP_Employee]
(
        [EmployeeName],
        [EmployeeMobileNo],
        [EmployeeEmailID],
        [DepartmentID],
        [DesignationID],
        [Salary]
)
VALUES
(
        @EmployeeName,
        @EmployeeMobileNo,
        @EmployeeEmailID,
        @DepartmentID,
        @DesignationID,
        @Salary
)

SET @EmployeeID = SCOPE_IDENTITY()

COMMIT TRAN
END TRY

BEGIN CATCH
IF @@TRANCOUNT > 0
BEGIN
    ROLLBACK TRAN
END
;THROW

END CATCH


-- EXEC [dbo].[PR_EMP_Employee_SelectPage] NULL,nUll, NUll

ALTER PROCEDURE [dbo].[PR_EMP_Employee_SelectPage]

        @EmployeeName		NVARCHAR(500),
        @DepartmentID		INT,
        @DesignationID		INT
AS

SET NOCOUNT ON;
BEGIN TRY

		SELECT		
		        [dbo].[EMP_Employee].[EmployeeID],
		        [dbo].[EMP_Employee].[EmployeeName],
		        [dbo].[EMP_Employee].[EmployeeMobileNo],
		        [dbo].[EMP_Employee].[EmployeeEmailID],
		        [dbo].[MST_Department].[DepartmentName],
		        [dbo].[MST_Designation].[DesignationName],
		        [dbo].[EMP_Employee].[Salary],
		        [dbo].[EMP_Employee].[DepartmentID],
		        [dbo].[EMP_Employee].[DesignationID]
		
		FROM	[dbo].[EMP_Employee]
		
		INNER JOIN [dbo].[MST_Department]
		ON		[dbo].[EMP_Employee].[DepartmentID] = [dbo].[MST_Department].[DepartmentID]
		
		INNER JOIN [dbo].[MST_Designation]
		ON		 [dbo].[EMP_Employee].[DesignationID] = [dbo].[MST_Designation].[DesignationID]
		
		ORDER BY 
				[dbo].[EMP_Employee].[EmployeeName]
END TRY

BEGIN CATCH
;THROW

END CATCH

ALTER PROCEDURE [dbo].[PR_EMP_Employee_SelectPK]

        @EmployeeID		INT

AS

SET NOCOUNT ON;
BEGIN TRY

		SELECT		
		        [dbo].[EMP_Employee].[EmployeeID],
		        [dbo].[EMP_Employee].[EmployeeName],
		        [dbo].[EMP_Employee].[EmployeeMobileNo],
		        [dbo].[EMP_Employee].[EmployeeEmailID],
		        [dbo].[EMP_Employee].[DepartmentID],
		        [dbo].[MST_Department].[DepartmentName],
		        [dbo].[EMP_Employee].[DesignationID],
		        [dbo].[MST_Designation].[DesignationName],
		        [dbo].[EMP_Employee].[Salary]		
		FROM	[dbo].[EMP_Employee]
		
		INNER JOIN [dbo].[MST_Department]
		ON		[dbo].[EMP_Employee].[DepartmentID] = [dbo].[MST_Department].[DepartmentID]
		AND		[dbo].[EMP_Employee].[EmployeeID] = @EmployeeID
		
		INNER JOIN [dbo].[MST_Designation]
		ON		[dbo].[EMP_Employee].[DesignationID] = [dbo].[MST_Designation].[DesignationID]
		
END TRY

BEGIN CATCH
;THROW

END CATCH

ALTER PROCEDURE [dbo].[PR_EMP_Employee_SelectView]

        @EmployeeID int

AS

SET NOCOUNT ON;

DECLARE @StartTime datetime
DECLARE @EndTime datetime
SET @StartTime = [dbo].[GetServerDateTime]();

BEGIN TRY

SELECT

        [dbo].[EMP_Employee].[EmployeeID],
        [dbo].[EMP_Employee].[EmployeeName],
        [dbo].[EMP_Employee].[EmployeeMobileNo],
        [dbo].[EMP_Employee].[EmployeeEmailID],
        [dbo].[MST_Department].[DepartmentName],
        [dbo].[MST_Designation].[DesignationName],
        [dbo].[EMP_Employee].[Salary],
        [dbo].[EMP_Employee].[DepartmentID],
        [dbo].[EMP_Employee].[DesignationID]

FROM [dbo].[EMP_Employee]

INNER JOIN [dbo].[MST_Department]
ON [dbo].[EMP_Employee].[DepartmentID] =
   [dbo].[MST_Department].[DepartmentID]

INNER JOIN [dbo].[MST_Designation]
ON [dbo].[EMP_Employee].[DesignationID] =
   [dbo].[MST_Designation].[DesignationID]

WHERE [dbo].[EMP_Employee].[EmployeeID] = @EmployeeID

END TRY

BEGIN CATCH
;THROW

END CATCH

ALTER PROCEDURE [dbo].[PR_EMP_Employee_Update]

        @EmployeeID				INT,
        @EmployeeName			NVARCHAR(500),
        @EmployeeMobileNo		NVARCHAR(50),
        @EmployeeEmailID		NVARCHAR(50),
        @DepartmentID			INT,
        @DesignationID			INT,
        @Salary					DECIMAL(18,2)

AS

SET NOCOUNT ON;

BEGIN TRY

BEGIN TRAN

UPDATE [dbo].[EMP_Employee]
SET
        [EmployeeName] = @EmployeeName,
        [EmployeeMobileNo] = @EmployeeMobileNo,
        [EmployeeEmailID] = @EmployeeEmailID,
        [DepartmentID] = @DepartmentID,
        [DesignationID] = @DesignationID,
        [Salary] = @Salary

WHERE	[dbo].[EMP_Employee].[EmployeeID] = @EmployeeID

COMMIT TRAN
END TRY

BEGIN CATCH
IF @@TRANCOUNT > 0
BEGIN
    ROLLBACK TRAN
END
;THROW

END CATCH



ALTER PROCEDURE [dbo].[PR_MST_Department_Delete]

        @DepartmentID		INT

AS

SET NOCOUNT ON;
BEGIN TRY
BEGIN TRAN

DELETE FROM [dbo].[MST_Department]
WHERE [dbo].[MST_Department].[DepartmentID] = @DepartmentID

COMMIT TRAN
END TRY

BEGIN CATCH
IF @@TRANCOUNT > 0
BEGIN
    ROLLBACK TRAN
END
;THROW

END CATCH

ALTER PROCEDURE [dbo].[PR_MST_Department_Insert]

        @DepartmentID			INT OUTPUT,
        @DepartmentName			NVARCHAR(100),
        @DepartmentShortName	NVARCHAR(50)

AS

SET NOCOUNT ON;
BEGIN TRY
BEGIN TRAN

INSERT [dbo].[MST_Department]
(
        [DepartmentName],
        [DepartmentShortName]
)
VALUES
(
        @DepartmentName,
        @DepartmentShortName
)

SET @DepartmentID = SCOPE_IDENTITY()

COMMIT TRAN
END TRY

BEGIN CATCH
IF @@TRANCOUNT > 0
BEGIN
    ROLLBACK TRAN
END
;THROW

END CATCH


ALTER PROCEDURE [dbo].[PR_MST_Department_SelectComboBox]

AS

SET NOCOUNT ON;
BEGIN TRY

		SELECT		
		        [dbo].[MST_Department].[DepartmentID],
		        [dbo].[MST_Department].[DepartmentName]
		FROM	[dbo].[MST_Department]
		
		
END TRY

BEGIN CATCH
;THROW

END CATCH

ALTER PROCEDURE [dbo].[PR_MST_Department_SelectPage]

        @DepartmentName nvarchar(100)

AS

SET NOCOUNT ON;
BEGIN TRY
SELECT
        [dbo].[MST_Department].[DepartmentID],
        [dbo].[MST_Department].[DepartmentName],
        [dbo].[MST_Department].[DepartmentShortName]

FROM	[dbo].[MST_Department]

WHERE	(@DepartmentName IS NULL OR [dbo].[MST_Department].[DepartmentName] LIKE '%' + @DepartmentName  + '%')

ORDER BY 
		[dbo].[MST_Department].[DepartmentName]

END TRY

BEGIN CATCH
;THROW

END CATCH

ALTER PROCEDURE [dbo].[PR_MST_Department_SelectPK]

        @DepartmentID int

AS

SET NOCOUNT ON;
BEGIN TRY

		SELECT
		        [dbo].[MST_Department].[DepartmentID],
		        [dbo].[MST_Department].[DepartmentName],
		        [dbo].[MST_Department].[DepartmentShortName]
		
		FROM	[dbo].[MST_Department]		
		WHERE	[dbo].[MST_Department].[DepartmentID] = @DepartmentID

END TRY

BEGIN CATCH
;THROW

END CATCH


ALTER PROCEDURE [dbo].[PR_MST_Department_SelectView]

        @DepartmentID int

AS

SET NOCOUNT ON;
BEGIN TRY

		SELECT
		        [dbo].[MST_Department].[DepartmentID],
		        [dbo].[MST_Department].[DepartmentName],
		        [dbo].[MST_Department].[DepartmentShortName]
		
		FROM	[dbo].[MST_Department]

		WHERE	[dbo].[MST_Department].[DepartmentID] = @DepartmentID

END TRY

BEGIN CATCH
;THROW

END CATCH

ALTER PROCEDURE [dbo].[PR_MST_Department_Update]

        @DepartmentID			INT,
        @DepartmentName			NVARCHAR (100),
        @DepartmentShortName	NVARCHAR(50)

AS

SET NOCOUNT ON;

BEGIN TRY
BEGIN TRAN

UPDATE [dbo].[MST_Department]
SET
        [DepartmentName] = @DepartmentName,
        [DepartmentShortName] = @DepartmentShortName

WHERE [dbo].[MST_Department].[DepartmentID] = @DepartmentID

COMMIT TRAN
END TRY

BEGIN CATCH
IF @@TRANCOUNT > 0
BEGIN
    ROLLBACK TRAN
END
;THROW

END CATCH



ALTER PROCEDURE [dbo].[PR_MST_Designation_Delete]

        @DesignationID		INT

AS

SET NOCOUNT ON;
BEGIN TRY
BEGIN TRAN

DELETE FROM [dbo].[MST_Designation]
WHERE [dbo].[MST_Designation].[DesignationID] = @DesignationID

COMMIT TRAN
END TRY

BEGIN CATCH
IF @@TRANCOUNT > 0
BEGIN
    ROLLBACK TRAN
END
;THROW

END CATCH


ALTER PROCEDURE [dbo].[PR_MST_Designation_Insert]

        @DesignationID		INT OUTPUT,
        @DesignationName	NVARCHAR(100)

AS

SET NOCOUNT ON;
BEGIN TRY
BEGIN TRAN

INSERT [dbo].[MST_Designation]
(
        [DesignationName]
)
VALUES
(
        @DesignationName
)

SET @DesignationID = SCOPE_IDENTITY()

COMMIT TRAN
END TRY

BEGIN CATCH
IF @@TRANCOUNT > 0
BEGIN
    ROLLBACK TRAN
END
;THROW

END CATCH

ALTER PROCEDURE [dbo].[PR_MST_Designation_SelectComboBox]

AS

SET NOCOUNT ON;
BEGIN TRY

		SELECT		
		        [dbo].[MST_Designation].[DesignationID],
		        [dbo].[MST_Designation].[DesignationName]
		FROM	[dbo].[MST_Designation]
		
		
END TRY

BEGIN CATCH
;THROW

END CATCH

ALTER PROCEDURE [dbo].[PR_MST_Designation_SelectPage]

        @DesignationName	NVARCHAR(100)

AS

SET NOCOUNT ON;
BEGIN TRY

		SELECT		
		        [dbo].[MST_Designation].[DesignationID],
		        [dbo].[MST_Designation].[DesignationName]
		
		FROM	[dbo].[MST_Designation]
		
		WHERE (@DesignationName IS NULL OR [dbo].[MST_Designation].[DesignationName] LIKE '%' + @DesignationName  + '%')

		ORDER BY 
				[dbo].[MST_Designation].[DesignationName]

END TRY

BEGIN CATCH
;THROW

END CATCH

ALTER PROCEDURE [dbo].[PR_MST_Designation_SelectPK]

        @DesignationID int

AS

SET NOCOUNT ON;
BEGIN TRY

		SELECT		
		        [dbo].[MST_Designation].[DesignationID],
		        [dbo].[MST_Designation].[DesignationName]
		
		FROM	[dbo].[MST_Designation]

		WHERE	[dbo].[MST_Designation].[DesignationID] = @DesignationID

END TRY

BEGIN CATCH
;THROW

END CATCH

ALTER PROCEDURE [dbo].[PR_MST_Designation_SelectView]

        @DesignationID int

AS

SET NOCOUNT ON;
BEGIN TRY

		SELECT		
		        [dbo].[MST_Designation].[DesignationID],
		        [dbo].[MST_Designation].[DesignationName]
		
		FROM	[dbo].[MST_Designation]
		
		WHERE	[dbo].[MST_Designation].[DesignationID] = @DesignationID

END TRY

BEGIN CATCH
;THROW

END CATCH

ALTER PROCEDURE [dbo].[PR_MST_Designation_Update]

        @DesignationID		INT,
        @DesignationName	NVARCHAR(100)

AS

SET NOCOUNT ON;

BEGIN TRY
BEGIN TRAN

UPDATE [dbo].[MST_Designation]
SET
        [DesignationName] = @DesignationName

WHERE [dbo].[MST_Designation].[DesignationID] = @DesignationID

COMMIT TRAN
END TRY

BEGIN CATCH
IF @@TRANCOUNT > 0
BEGIN
    ROLLBACK TRAN
END
;THROW

END CATCH