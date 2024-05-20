--Employee Trigger--
CREATE OR ALTER TRIGGER [dbo].[TRG_AFTER_INSERT_Employee]
ON [dbo].[Employee]
AFTER INSERT
AS
BEGIN 
  SET NOCOUNT ON; 
  INSERT INTO [dbo].[RECENT_ACTIONS_TABLE] 
    ([REC_ACT_TABLE_NAME],[RECT_ACT_INFO],[RECT_ACT_CREATE])
  SELECT 
    'Employee',
      e.EmpName + ' Employee Added !',  
    GETDATE() -- Current date and time of the action
  FROM 
    inserted i
	 INNER JOIN [dbo].[Employee] e ON i.EmpID = e.EmpID;
END;

CREATE OR ALTER TRIGGER [dbo].[TRG_AFTER_DELETE_Employee]
ON [dbo].[Employee]
AFTER DELETE
AS
BEGIN 
  SET NOCOUNT ON; 
  INSERT INTO [dbo].[RECENT_ACTIONS_TABLE] 
    ([REC_ACT_TABLE_NAME],[RECT_ACT_INFO],[RECT_ACT_CREATE])
  SELECT 
    'Employee', -- Name of the table where the action occurred
      d.EmpName + ' Employee Deleted !',  -- Detailed message
    GETDATE() -- Current date and time of the action
  FROM 
    deleted d; -- The deleted table contains the rows that were deleted
END;


CREATE OR ALTER TRIGGER [dbo].[TRG_AFTER_Update_Employee]
ON [dbo].[Employee]
AFTER Update
AS
BEGIN 
  SET NOCOUNT ON; 
  INSERT INTO [dbo].[RECENT_ACTIONS_TABLE] 
    ([REC_ACT_TABLE_NAME],[RECT_ACT_INFO],[RECT_ACT_CREATE])
  SELECT 
    'Employee',
      e.EmpName + ' Employee Updated !',  
    GETDATE() -- Current date and time of the action
  FROM 
    inserted i
	 INNER JOIN [dbo].[Employee] e ON i.EmpID = e.EmpID;
END;
