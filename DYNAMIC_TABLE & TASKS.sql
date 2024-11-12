USE WAREHOUSE HEALTH_WH;

CREATE OR REPLACE DYNAMIC TABLE Insurance_DT
  WAREHOUSE = 'HEALTH_WH' 
  TARGET_LAG = '10 MINUTE'
  
AS 
SELECT 
    Insurance_ID,
    Insurance_Provider,
    Policy_Number,
    Coverage_Start_Date,
    Coverage_End_Date,
    Created_At 
FROM 
    Insurance;


----------------------------------------------

--creating one more dynamic table for staff

CREATE OR REPLACE DYNAMIC TABLE Staff_DT
  WAREHOUSE = 'HEALTH_WH' 
  TARGET_LAG = '10 MINUTE'
AS 
SELECT 
    Staff_ID,
    First_Name ,
    Last_Name ,
    Role ,
    Department ,
    Phone_Number ,
    Email,
    Created_At 
FROM 
    Staff;
