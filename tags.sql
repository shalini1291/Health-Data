-- Create a tag named 'Sensitive_Data' with a description
CREATE OR REPLACE TAG Sensitive_Data COMMENT = 'Contains personally identifiable information (PII)';

-- Apply the tag to specific columns in the 'Staff' table
ALTER TABLE Staff MODIFY COLUMN Phone_Number SET TAG Sensitive_Data = 'PII';
ALTER TABLE Staff MODIFY COLUMN Email SET TAG Sensitive_Data = 'PII';

SHOW TAGS