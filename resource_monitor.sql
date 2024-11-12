-- Step 1: Create a Resource Monitor for your healthcare project
CREATE or replace RESOURCE MONITOR healthcare_resource_monitor
  WITH CREDIT_QUOTA = 1000   
  FREQUENCY = WEEKLY       
  START_TIMESTAMP = '2024-10-25' 
  END_TIMESTAMP = '2024-12-31' ;  

  ALTER RESOURCE MONITOR healthcare_resource_monitor
      SET SUSPEND_AT = 80 PERCENT
      SET NOTIFY_AT = 90 PERCENT
      SET SUSPEND_IMMEDIATE_AT = 100 PERCENT;

-- Assign the resource monitor to a warehouse (example: healthcare_warehouse)
ALTER WAREHOUSE HEALTH_WH SET RESOURCE_MONITOR = healthcare_resource_monitor;
