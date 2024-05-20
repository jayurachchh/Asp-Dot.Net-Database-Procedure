CREATE OR ALTER PROCEDURE [dbo].[API_ALL_Dashboord_COUNTS]
AS
BEGIN
    SET NOCOUNT ON;
    SELECT
        (SELECT COUNT(DISTINCT EmpID) FROM Employee) AS TotalEmployee,
		(SELECT COUNT(e.EmpID) 
		FROM Employee e 
		LEFT JOIN TaskAssign ta ON e.EmpID = ta.EmpID
		WHERE ta.EmpID IS NULL)AS TotalEmployeesWithoutTasks ,
		(SELECT COUNT(DISTINCT e.EmpID) 
		FROM Employee e
		INNER JOIN TaskAssign ta ON e.EmpID = ta.EmpID)AS TotalEmployeeAssignedtask,
		(SELECT COUNT(DISTINCT ProjID) FROM Project) AS TotalProject,
		(SELECT COUNT(DISTINCT ProjID) FROM Project Where [dbo].Project.StatusID=3) AS TotalUpcomingProject,
		(SELECT COUNT(DISTINCT ProjID) FROM Project Where [dbo].Project.StatusID=6) AS TotalCurrentProject,
		(SELECT COUNT(DISTINCT ProjID) FROM Project Where [dbo].Project.StatusID=7) AS TotalCompleteProject
END
Exec [dbo].[API_ALL_Dashboord_COUNTS]


