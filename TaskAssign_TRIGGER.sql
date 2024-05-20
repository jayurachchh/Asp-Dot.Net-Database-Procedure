--TaskAssign Trigger--
CREATE OR ALTER TRIGGER [dbo].[TRG_AFTER_INSERT_TaskAssign]
ON [dbo].[TaskAssign]
AFTER INSERT
AS
BEGIN 
  SET NOCOUNT ON; 
  INSERT INTO [dbo].[RECENT_ACTIONS_TABLE] 
    ([REC_ACT_TABLE_NAME],[RECT_ACT_INFO],[RECT_ACT_CREATE])
  SELECT 
    'TaskAssign',
      t.TaskAssignID + ' TaskAssign Added !',  
    GETDATE() -- Current date and time of the action
  FROM 
    inserted i
	 INNER JOIN [dbo].[TaskAssign] t ON i.TaskAssignID = t.TaskAssignID;
END;

CREATE OR ALTER TRIGGER [dbo].[TRG_AFTER_DELETE_TaskAssign]
ON [dbo].[TaskAssign]
AFTER DELETE
AS
BEGIN 
  SET NOCOUNT ON; 
  INSERT INTO [dbo].[RECENT_ACTIONS_TABLE] 
    ([REC_ACT_TABLE_NAME],[RECT_ACT_INFO],[RECT_ACT_CREATE])
  SELECT 
    'TaskAssign', -- Name of the table where the action occurred
      d.TaskAssignID + ' TaskAssign Deleted !',  -- Detailed message
    GETDATE() -- Current date and time of the action
  FROM 
    deleted d; -- The deleted table contains the rows that were deleted
END;


CREATE OR ALTER TRIGGER [dbo].[TRG_AFTER_Update_TaskAssign]
ON [dbo].[TaskAssign]
AFTER Update
AS
BEGIN 
  SET NOCOUNT ON; 
  INSERT INTO [dbo].[RECENT_ACTIONS_TABLE] 
    ([REC_ACT_TABLE_NAME],[RECT_ACT_INFO],[RECT_ACT_CREATE])
  SELECT 
    'TaskAssign',
       t.TaskAssignID + ' ProjectWisetask Updated !',  
    GETDATE() -- Current date and time of the action
  FROM 
    inserted i
	 INNER JOIN [dbo].[TaskAssign] t ON i.TaskAssignID = t.TaskAssignID;
END;
