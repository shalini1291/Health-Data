--masking data for nurse

use database HEALTH_DB

CREATE OR REPLACE MASKING POLICY mask_sensitive_info
AS (column_value STRING) RETURNS STRING ->
CASE
    WHEN CURRENT_ROLE() = 'NURSE' THEN 'REDACTED'
    ELSE column_value
END;


---------------------
ALTER TABLE Medical_Records
MODIFY COLUMN Diagnosis SET MASKING POLICY mask_sensitive_info USING (Diagnosis);

ALTER TABLE Medical_Records
MODIFY COLUMN Treatment SET MASKING POLICY mask_sensitive_info USING (Treatment);


