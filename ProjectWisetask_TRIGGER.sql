--ProjectWiseTask Trigger--
CREATE OR ALTER TRIGGER [dbo].[TRG_AFTER_INSERT_ProjectWiseTask]
ON [dbo].[ProjectWisetask]
AFTER INSERT
AS
BEGIN 
  SET NOCOUNT ON; 
  INSERT INTO [dbo].[RECENT_ACTIONS_TABLE] 
    ([REC_ACT_TABLE_NAME],[RECT_ACT_INFO],[RECT_ACT_CREATE])
  SELECT 
    'ProjectWisetask',
      p.ProjWiseTaskName + ' ProjectWisetask Added !',  
    GETDATE() -- Current date and time of the action
  FROM 
    inserted i
	 INNER JOIN [dbo].[ProjectWiseTask] p ON i.ProjWiseTaskID = p.ProjWiseTaskID;
END;

CREATE OR ALTER TRIGGER [dbo].[TRG_AFTER_DELETE_ProjetWiseTask]
ON [dbo].[ProjectWiseTask]
AFTER DELETE
AS
BEGIN 
  SET NOCOUNT ON; 
  INSERT INTO [dbo].[RECENT_ACTIONS_TABLE] 
    ([REC_ACT_TABLE_NAME],[RECT_ACT_INFO],[RECT_ACT_CREATE])
  SELECT 
    'ProjectWisetask', -- Name of the table where the action occurred
      d.ProjWiseTaskName + ' ProjectWisetask Deleted !',  -- Detailed message
    GETDATE() -- Current date and time of the action
  FROM 
    deleted d; -- The deleted table contains the rows that were deleted
END;


CREATE OR ALTER TRIGGER [dbo].[TRG_AFTER_Update_ProjectWiseTask]
ON [dbo].[ProjectWisetask]
AFTER Update
AS
BEGIN 
  SET NOCOUNT ON; 
  INSERT INTO [dbo].[RECENT_ACTIONS_TABLE] 
    ([REC_ACT_TABLE_NAME],[RECT_ACT_INFO],[RECT_ACT_CREATE])
  SELECT 
    'ProjectWisetask',
       p.ProjWiseTaskName + ' ProjectWisetask Updated !',  
    GETDATE() -- Current date and time of the action
  FROM 
    inserted i
	 INNER JOIN [dbo].[ProjectWisetask] p ON i.ProjWiseTaskID = p.ProjWiseTaskID;
END;
