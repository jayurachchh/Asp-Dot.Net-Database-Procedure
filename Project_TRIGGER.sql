--Project Trigger--
CREATE OR ALTER TRIGGER [dbo].[TRG_AFTER_INSERT_Project]
ON [dbo].[Project]
AFTER INSERT
AS
BEGIN 
  SET NOCOUNT ON; 
  INSERT INTO [dbo].[RECENT_ACTIONS_TABLE] 
    ([REC_ACT_TABLE_NAME],[RECT_ACT_INFO],[RECT_ACT_CREATE])
  SELECT 
    'Project',
      p.ProjName + ' Project Added !',  
    GETDATE() -- Current date and time of the action
  FROM 
    inserted i
	 INNER JOIN [dbo].[Project] p ON i.ProjID = p.ProjID;
END;

CREATE OR ALTER TRIGGER [dbo].[TRG_AFTER_DELETE_Project]
ON [dbo].[Project]
AFTER DELETE
AS
BEGIN 
  SET NOCOUNT ON; 
  INSERT INTO [dbo].[RECENT_ACTIONS_TABLE] 
    ([REC_ACT_TABLE_NAME],[RECT_ACT_INFO],[RECT_ACT_CREATE])
  SELECT 
    'Project', -- Name of the table where the action occurred
      d.ProjName + ' Project Deleted !',  -- Detailed message
    GETDATE() -- Current date and time of the action
  FROM 
    deleted d; -- The deleted table contains the rows that were deleted
END;


CREATE OR ALTER TRIGGER [dbo].[TRG_AFTER_Update_Project]
ON [dbo].[Project]
AFTER Update
AS
BEGIN 
  SET NOCOUNT ON; 
  INSERT INTO [dbo].[RECENT_ACTIONS_TABLE] 
    ([REC_ACT_TABLE_NAME],[RECT_ACT_INFO],[RECT_ACT_CREATE])
  SELECT 
    'Project',
       p.ProjName + ' Project Updated !',  
    GETDATE() -- Current date and time of the action
  FROM 
    inserted i
	 INNER JOIN [dbo].[Project] p ON i.ProjID = p.ProjID;
END;
