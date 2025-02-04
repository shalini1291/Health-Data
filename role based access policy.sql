-- Create roles
CREATE ROLE HEALTHCARE_ADMIN;
CREATE ROLE DOCTOR;
CREATE ROLE NURSE;
CREATE ROLE BILLING;

-- Create a parent role for all healthcare users
CREATE ROLE HEALTHCARE_USER;

-- Grant roles to the parent role
GRANT ROLE DOCTOR TO ROLE HEALTHCARE_USER;
GRANT ROLE NURSE TO ROLE HEALTHCARE_USER;
GRANT ROLE BILLING TO ROLE HEALTHCARE_USER;
GRANT ROLE HEALTHCARE_ADMIN TO ROLE HEALTHCARE_USER;

-- Grant privileges to the Admin role (full access)
GRANT ALL PRIVILEGES ON DATABASE HEALTH_DB TO ROLE HEALTHCARE_ADMIN;

GRANT USAGE ON DATABASE HEALTH_DB TO ROLE DOCTOR;
GRANT USAGE ON SCHEMA HEALTH_DB.PUBLIC TO ROLE DOCTOR;
GRANT SELECT ON TABLE HEALTH_DB.PUBLIC.MEDICAL_RECORDS TO ROLE DOCTOR;
GRANT SELECT ON TABLE HEALTH_DB.PUBLIC.PRESCRIPTIONS TO ROLE DOCTOR;
GRANT SELECT ON TABLE HEALTH_DB.PUBLIC.LAB_RESULTS TO ROLE DOCTOR;


-- Grant specific access to the Nurse role
GRANT USAGE ON DATABASE HEALTH_DB TO ROLE NURSE;
GRANT USAGE ON SCHEMA HEALTH_DB.PUBLIC TO ROLE NURSE;
GRANT SELECT ON TABLE HEALTH_DB.PUBLIC.PATIENTS TO ROLE NURSE;
GRANT SELECT ON TABLE HEALTH_DB.PUBLIC.LAB_RESULTS TO ROLE NURSE;
GRANT SELECT ON TABLE HEALTH_DB.PUBLIC.MEDICAL_RECORDS TO ROLE NURSE;

-- Grant specific access to the Billing role
GRANT USAGE ON DATABASE HEALTH_DB TO ROLE BILLING;
GRANT USAGE ON SCHEMA HEALTH_DB.PUBLIC TO ROLE BILLING;
GRANT SELECT ON TABLE HEALTH_DB.PUBLIC.BILLING TO ROLE BILLING;

GRANT USAGE ON WAREHOUSE health_wh TO ROLE HEALTHCARE_USER;


-- Create users in Snowflake for demonstration
CREATE USER doctor_user 
  PASSWORD = 'Tech12345' 
  DEFAULT_ROLE = DOCTOR 
  DEFAULT_WAREHOUSE = health_wh 
  MUST_CHANGE_PASSWORD = FALSE;

CREATE USER nurse_user 
  PASSWORD = 'Tech12345' 
  DEFAULT_ROLE = NURSE 
  DEFAULT_WAREHOUSE = health_wh 
  MUST_CHANGE_PASSWORD = FALSE;

CREATE USER billing_user 
  PASSWORD = 'Tech12345' 
  DEFAULT_ROLE = BILLING 
  DEFAULT_WAREHOUSE = health_wh 
  MUST_CHANGE_PASSWORD = FALSE;

CREATE USER admin_user 
  PASSWORD = 'Tech12345' 
  DEFAULT_ROLE = HEALTHCARE_ADMIN 
  DEFAULT_WAREHOUSE = health_wh 
  MUST_CHANGE_PASSWORD = FALSE;

-- Assign users to roles
GRANT ROLE DOCTOR TO USER doctor_user;
GRANT ROLE NURSE TO USER nurse_user;
GRANT ROLE BILLING TO USER billing_user;
GRANT ROLE HEALTHCARE_ADMIN TO USER admin_user;

-- Grant access to the warehouse for all users
GRANT USAGE ON WAREHOUSE health_wh TO ROLE HEALTHCARE_USER;

-- Grant access to the database
GRANT USAGE ON DATABASE HEALTH_DB TO ROLE HEALTHCARE_USER;

USE ROLE DOCTOR;

show roles

GRANT USAGE ON WAREHOUSE health_wh TO ROLE HEALTHCARE_USER;

-- Grant access to the database
GRANT select ON DATABASE HEALTH_DB TO ROLE HEALTHCARE_USER;

-- Check if the DOCTOR role is granted to the HEALTHCARE_USER
SHOW GRANTS TO ROLE HEALTHCARE_USER;

-- Check the assigned roles for the doctor_user
SHOW GRANTS TO USER doctor_user;

SHOW GRANTS TO ROLE DOCTOR;

SHOW GRANTS TO ROLE NURSE;

SHOW SCHEMAS IN DATABASE HEALTH_DB;

GRANT CREATE WAREHOUSE ON ACCOUNT TO ROLE DOCTOR;
GRANT CREATE WAREHOUSE ON ACCOUNT TO ROLE NURSE;
GRANT CREATE WAREHOUSE ON ACCOUNT TO ROLE BILLING;

SHOW  ROLES

---------  in dooctor_user 

use role doctor

USE ROLE 
CREATE WAREHOUSE EG_HD
WITH WAREHOUSE_SIZE = 'X-SMALL'
   MAX_CLUSTER_COUNT = 3
   MIN_CLUSTER_COUNT = 1
   AUTO_RESUME = TRUE
   AUTO_SUSPEND = 60
   INITIALLY_SUSPENDED = FALSE;

SHOW WAREHOUSES
use  WAREHOUSE EG_HD

USE DATABASE HEALTH_DB;
SHOW SCHEMAS;
SELECT CURRENT_ROLE();

SHOW GRANTS TO ROLE DOCTOR;

SHOW GRANTS ON SCHEMA HEALTH_DB.PUBLIC;


select * from MEDICAL_RECORDS 
select * from  LAB_RESULTS
select * from  PRESCRIPTIONS
-----------------------------------------------------------


---------  in NURSE_user login

USE ROLE NURSE

CREATE WAREHOUSE EG_HD_NURSE
WITH WAREHOUSE_SIZE = 'X-SMALL'
   MAX_CLUSTER_COUNT = 3
   MIN_CLUSTER_COUNT = 1
   AUTO_RESUME = TRUE
   AUTO_SUSPEND = 60
   INITIALLY_SUSPENDED = FALSE;

SHOW WAREHOUSES
use  WAREHOUSE EG_HD_NURSE
SHOW GRANTS ON SCHMEA PUBLIC TO ROLE NURSE


SHOW GRANTS TO ROLE NURSE;

SHOW GRANTS ON SCHEMA HEALTH_DB.PUBLIC;

USE DATABASE HEALTH_DB;
USE SCHEMA PUBLIC; -- Replace with the actual schema name

select * from  LAB_RESULTS
select * from  PATIENTS

---------------------------------------------------------
--using  user_BILLING login 

USE ROLE BILLING

CREATE WAREHOUSE EG_HD_BILLING
WITH WAREHOUSE_SIZE = 'X-SMALL'
   MAX_CLUSTER_COUNT = 3
   MIN_CLUSTER_COUNT = 1
   AUTO_RESUME = TRUE
   AUTO_SUSPEND = 60
   INITIALLY_SUSPENDED = FALSE;

SHOW WAREHOUSES
use  WAREHOUSE EG_HD_BILLING
SHOW GRANTS ON SCHEMA PUBLIC TO ROLE BILLING


SHOW GRANTS TO ROLE BILLING;

SHOW GRANTS ON SCHEMA HEALTH_DB.PUBLIC;

USE DATABASE HEALTH_DB;
USE SCHEMA PUBLIC; -- Replace with the actual schema name

select * from  BILLING