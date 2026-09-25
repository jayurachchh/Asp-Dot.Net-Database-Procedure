ALTER PROCEDURE [dbo].[PR_MST_ExpenseType_Delete]

		@ExpenseTypeID 		int

AS

SET NOCOUNT ON;

DECLARE	@StartTime	datetime
DECLARE	@EndTime	datetime
SET		@StartTime = [dbo].[GetServerDateTime]();

BEGIN TRY
BEGIN TRAN

DELETE FROM [dbo].[MST_ExpenseType]
WHERE [dbo].[MST_ExpenseType].[ExpenseTypeID] = @ExpenseTypeID


COMMIT TRAN
END TRY

BEGIN CATCH
IF @@TRANCOUNT > 0
BEGIN
		ROLLBACK TRAN
		END
;THROW

END CATCH

SET		@EndTime = [dbo].[GetServerDateTime]()
--EXEC	[dbo].[PR_MST_SPExecution_Insert] '[dbo].[PR_MST_ExpenseType_Delete]', @StartTime, @EndTime

ALTER PROCEDURE [dbo].[PR_MST_ExpenseType_Insert]

		@ExpenseTypeID 		int OUTPUT,
		@ExpenseType   		nvarchar (250),
		@HospitalID    		int,
		@Remarks       		nvarchar (500),
		@UserID        		int,
		@Created       		datetime,
		@Modified      		datetime

AS

SET NOCOUNT ON;

DECLARE	@StartTime	datetime
DECLARE	@EndTime	datetime
SET		@StartTime = [dbo].[GetServerDateTime]();

BEGIN TRY
BEGIN TRAN

INSERT [dbo].[MST_ExpenseType]
(
		[ExpenseType],
		[HospitalID],
		[Remarks],
		[UserID],
		[Created],
		[Modified]
)
VALUES
(
		@ExpenseType,
		@HospitalID,
		@Remarks,
		@UserID,
		@Created,
		@Modified
)

SET @ExpenseTypeID = SCOPE_IDENTITY()

COMMIT TRAN
END TRY

BEGIN CATCH
IF @@TRANCOUNT > 0
BEGIN
		ROLLBACK TRAN
		END
;THROW

END CATCH

SET		@EndTime = [dbo].[GetServerDateTime]()
--EXEC	[dbo].[PR_MST_SPExecution_Insert] '[dbo].[PR_MST_ExpenseType_Insert]', @StartTime, @EndTime

ALTER PROCEDURE [dbo].[PR_MST_ExpenseType_SelectPage]

		@PageOffset   		int,
		@PageSize     		int,
		@TotalRecords 		int OUTPUT,
		@ExpenseType		nvarchar(250),
		@HospitalID			int
AS

SET NOCOUNT ON;

DECLARE	@StartTime	datetime
DECLARE	@EndTime	datetime
SET		@StartTime = [dbo].[GetServerDateTime]();

BEGIN TRY

		SELECT @TotalRecords= COUNT(1) FROM [dbo].[MST_ExpenseType]
		WHERE (@ExpenseType IS NULL OR [dbo].[MST_ExpenseType].[ExpenseType] LIKE '%'+CAST(@ExpenseType as varchar(50)) +'%')
		AND (@HospitalID IS NULL OR [dbo].[MST_ExpenseType].[HospitalID] = @HospitalID)

		SELECT  
				 
				[dbo].[MST_ExpenseType].[ExpenseTypeID],
				[dbo].[MST_ExpenseType].[ExpenseType],
				[dbo].[MST_Hospital].[Hospital],
				[dbo].[MST_ExpenseType].[Remarks],
				[dbo].[SEC_User].[UserName],
				[dbo].[MST_ExpenseType].[Created],
				[dbo].[MST_ExpenseType].[Modified],
				[dbo].[MST_ExpenseType].[HospitalID],
				[dbo].[MST_ExpenseType].[UserID]
		FROM  [dbo].[MST_ExpenseType]
		INNER JOIN [dbo].[MST_Hospital]
		ON [dbo].[MST_ExpenseType].[HospitalID] = [dbo].[MST_Hospital].[HospitalID]
		INNER JOIN [dbo].[SEC_User]
		ON [dbo].[MST_ExpenseType].[UserID] = [dbo].[SEC_User].[UserID]

	WHERE (@ExpenseType IS NULL OR [dbo].[MST_ExpenseType].[ExpenseType] LIKE '%'+CAST(@ExpenseType as varchar(50)) +'%')
		AND (@HospitalID IS NULL OR [dbo].[MST_ExpenseType].[HospitalID] = @HospitalID)
		
		ORDER BY [dbo].[MST_ExpenseType].[ExpenseType]
		OFFSET @PageOffset ROWS
		FETCH NEXT @PageSize ROWS ONLY


END TRY

BEGIN CATCH
;THROW

END CATCH

SET		@EndTime = [dbo].[GetServerDateTime]()
--EXEC	[dbo].[PR_MST_SPExecution_Insert] '[dbo].[PR_MST_ExpenseType_SelectPage]', @StartTime, @EndTime

ALTER PROCEDURE [dbo].[PR_MST_ExpenseType_SelectPK]

		@ExpenseTypeID 		int

AS

SET NOCOUNT ON;

DECLARE	@StartTime	datetime
DECLARE	@EndTime	datetime
SET		@StartTime = [dbo].[GetServerDateTime]();

BEGIN TRY

SELECT  
		[dbo].[MST_ExpenseType].[ExpenseTypeID],
		[dbo].[MST_ExpenseType].[ExpenseType],
		[dbo].[MST_ExpenseType].[HospitalID],
		[dbo].[MST_Hospital].[Hospital],
		[dbo].[MST_ExpenseType].[Remarks],
		[dbo].[MST_ExpenseType].[UserID],
		[dbo].[MST_ExpenseType].[Created],
		[dbo].[MST_ExpenseType].[Modified]
FROM  [dbo].[MST_ExpenseType]
INNER JOIN			[dbo].[MST_Hospital]
ON  [dbo].[MST_ExpenseType].[HospitalID] = [dbo].[MST_Hospital].[HospitalID]

WHERE [dbo].[MST_ExpenseType].[ExpenseTypeID] = @ExpenseTypeID


END TRY

BEGIN CATCH
;THROW

END CATCH

SET		@EndTime = [dbo].[GetServerDateTime]()

--   [dbo].[PR_MST_ExpenseType_SelectView] @ExpenseTypeID = 1

ALTER PROCEDURE [dbo].[PR_MST_ExpenseType_SelectView]

		@ExpenseTypeID 		int

AS

SET NOCOUNT ON;

DECLARE	@StartTime	datetime
DECLARE	@EndTime	datetime
SET		@StartTime = [dbo].[GetServerDateTime]();

BEGIN TRY

SELECT  
		[dbo].[MST_ExpenseType].[ExpenseTypeID],
		[dbo].[MST_ExpenseType].[ExpenseType],
		[dbo].[MST_Hospital].[Hospital],
		[dbo].[MST_ExpenseType].[Remarks],
		[dbo].[SEC_User].[UserName],
		[dbo].[MST_ExpenseType].[Created],
		[dbo].[MST_ExpenseType].[Modified],
		[dbo].[MST_ExpenseType].[HospitalID],
		[dbo].[MST_ExpenseType].[UserID]
FROM  [dbo].[MST_ExpenseType]
INNER JOIN [dbo].[MST_Hospital]
ON [dbo].[MST_ExpenseType].[HospitalID] = [dbo].[MST_Hospital].[HospitalID]
INNER JOIN [dbo].[SEC_User]
ON [dbo].[MST_ExpenseType].[UserID] = [dbo].[SEC_User].[UserID]

WHERE [dbo].[MST_ExpenseType].[ExpenseTypeID] = @ExpenseTypeID


END TRY

BEGIN CATCH
;THROW

END CATCH

SET		@EndTime = [dbo].[GetServerDateTime]()

ALTER PROCEDURE [dbo].[PR_MST_ExpenseType_Update]

		@ExpenseTypeID 		int,
		@ExpenseType   		nvarchar (250),
		@HospitalID    		int,
		@Remarks       		nvarchar (500),
		@UserID        		int,
		@Created       		datetime,
		@Modified      		datetime

AS

SET NOCOUNT ON;

DECLARE	@StartTime	datetime
DECLARE	@EndTime	datetime
SET		@StartTime = [dbo].[GetServerDateTime]();

BEGIN TRY
BEGIN TRAN

UPDATE [dbo].[MST_ExpenseType]
SET
		[ExpenseType] = @ExpenseType,
		[HospitalID] = @HospitalID,
		[Remarks] = @Remarks,
		[UserID] = @UserID,
		[Created] = @Created,
		[Modified] = @Modified
WHERE [dbo].[MST_ExpenseType].[ExpenseTypeID] = @ExpenseTypeID

COMMIT TRAN
END TRY

BEGIN CATCH
IF @@TRANCOUNT > 0
BEGIN
		ROLLBACK TRAN
		END
;THROW

END CATCH

SET		@EndTime = [dbo].[GetServerDateTime]()
--EXEC	[dbo].[PR_MST_SPExecution_Insert] '[dbo].[PR_MST_ExpenseType_Update]', @StartTime, @EndTime
