CREATE SHARE healthcare_data_share;
use health_db

GRANT USAGE ON DATABASE health_db  TO SHARE HEALTHCARE_DATA_SHARE;

-- Grant the required privileges to the share first
GRANT SELECT ON TABLE Patients TO SHARE healthcare_data_share;
GRANT SELECT ON TABLE Doctors TO SHARE healthcare_data_share;
GRANT SELECT ON TABLE Appointments TO SHARE healthcare_data_share;
GRANT SELECT ON TABLE Medical_Records TO SHARE healthcare_data_share;

-- Grant SELECT privileges on each table to the share
GRANT SELECT ON TABLE Patients TO SHARE healthcare_data_share;
GRANT SELECT ON TABLE Doctors TO SHARE healthcare_data_share;
GRANT SELECT ON TABLE Appointments TO SHARE healthcare_data_share;
GRANT SELECT ON TABLE Medical_Records TO SHARE healthcare_data_share;


-- Add specific tables to the share
ALTER SHARE healthcare_data_share ADD TABLE Patients
ALTER SHARE healthcare_data_share ADD TABLE Doctors;
ALTER SHARE healthcare_data_share ADD TABLE Appointments;
ALTER SHARE healthcare_data_share ADD TABLE Medical_Records;

-- Optionally, add an entire schema
-- ALTER SHARE healthcare_data_share ADD SCHEMA healthcare_schema;
GRANT USAGE ON SHARE healthcare_data_share TO ACCOUNT 'learningtech2';

SHOW SHARES;

SELECT CURRENT_ACCOUNT();

GRANT USAGE ON SHARE healthcare_data_share TO ACCOUNT ;

GRANT USAGE ON SHARE healthcare_data_share TO ACCOUNT 'wi24536.ap-southeast-1.aws';

-- GRANT USAGE ON SHARE healthcare_data_share TO ACCOUNT WI24536