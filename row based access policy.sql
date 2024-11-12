use database HEALTH_DB

CREATE OR REPLACE ROW ACCESS POLICY medical_records_access_policy
AS
(record_doctor_id INT)  -- Removed user_name from parameters
RETURNS BOOLEAN ->
CASE
    WHEN EXISTS (
        SELECT 1 FROM Doctors 
        WHERE Doctors.First_Name = CURRENT_USER()  -- Use CURRENT_USER() directly
          AND Doctors.Doctor_ID = record_doctor_id
    ) THEN TRUE
    WHEN CURRENT_ROLE() = 'ADMIN' THEN TRUE
    WHEN CURRENT_ROLE() = 'NURSE' THEN TRUE
    ELSE FALSE
END;


ALTER TABLE Medical_Records
ADD ROW ACCESS POLICY medical_records_access_policy
ON (Doctor_ID);

-------------------
--creating a doctor_user whose name is -Alice
CREATE or replace USER Alice 
    PASSWORD = 'Tech12345!' 
    DEFAULT_ROLE = 'DOCTOR' 
    DEFAULT_WAREHOUSE = 'HEALTH_WH'  
    DEFAULT_NAMESPACE = 'HEALTH_DB.PUBLIC'  
    MUST_CHANGE_PASSWORD = FALSE;  
    
-- Assign the DOCTOR role to ALICE
GRANT ROLE DOCTOR TO USER ALICE;

--login as alice and check if u can acess 
-------------------
--now creating user as of nurse that  is .... and chedk if the masking pocy is implied or not
staff_id is 2 and name is Jane
(2, 'Jane', 'Smith', 'Nurse', 'Emergency', '555-234-5678', 'jane.smith@hospital.com'),


CREATE or replace USER Jane 
    PASSWORD = 'Tech12345!' 
    DEFAULT_ROLE = 'NURSE' 
    DEFAULT_WAREHOUSE = 'HEALTH_WH'  
    DEFAULT_NAMESPACE = 'HEALTH_DB.PUBLIC'  
    MUST_CHANGE_PASSWORD = FALSE;  

GRANT ROLE NURSE TO USER Jane;
--NOW LOGIN AS jANE AND CHECK IF U CAN GET THE DAT LIKE IN MASKING FOR DIAGNOSIS AND TREATMENT

select * from medical_records

--hence we can see the redated term in diganosis and treatment column..becoz of data masking policy

