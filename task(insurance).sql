CREATE OR REPLACE TASK Refresh_INSURANCE_DT
WAREHOUSE = 'HEALTH_WH'  -- Specify the same warehouse
SCHEDULE = 'USING CRON 0 * * * * UTC'  -- Every hour
AS
INSERT INTO INSURANCE_DT
SELECT 
    Insurance_ID,
    Insurance_Provider,
    Policy_Number,
    Coverage_Start_Date,
    Coverage_End_Date,
    Created_At
FROM 
    Insurance_Stream;

-- Enable the task
ALTER TASK Refresh_INSURANCE_DT RESUME;

--------------------
-- ADDING ONE MORE TASK WHICH IS DEFINED AS Refresh_Staff_DT
CREATE OR REPLACE TASK Refresh_Staff_DT
  WAREHOUSE = 'HEALTH_WH'
  AFTER Refresh_INSURANCE_DT  
  --COMMENT='RECORDING UPDATED VALUES OF STAFF'
AS
  INSERT INTO Staff_DT  -- Assuming Staff_DT is a dynamic table you have created
  SELECT 
      Staff_ID,
      First_Name,
      Last_Name,
      Role,
      Department,
      Phone_Number,
      Email,
      Created_At
  FROM Staff;
