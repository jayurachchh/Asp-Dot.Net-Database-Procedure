-- Get All RecentAction--
ALTER PROCEDURE [dbo].[Pro_SelectAllRecentAction]
AS
BEGIN
    SELECT
		 [dbo].[RECENT_ACTIONS_TABLE].REC_ACT_ID,
		 [dbo].[RECENT_ACTIONS_TABLE].REC_ACT_TABLE_NAME,
		 [dbo].[RECENT_ACTIONS_TABLE].RECT_ACT_INFO,
		 [dbo].[RECENT_ACTIONS_TABLE].RECT_ACT_CREATE
    FROM [dbo].[RECENT_ACTIONS_TABLE]
END;

EXEC [dbo].[Pro_SelectAllRecentAction] 