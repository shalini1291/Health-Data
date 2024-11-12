-- time travel--at, before (timestamp, offset, statement id)
use health_db
select * from appointments

SELECT CURRENT_TIMESTAMP();

-- ans i 2024-10-23 03:04:49.877 -0700

now deleting one that is 10	10	10	2024-08-19	13:00:00	Anxiety	Completed	2024-10-23 02:59:51.675

2024-10-23 03:24:58.325 -0700 

delete from patients where PATIENT_ID=10

select * from patients

-- ans is 9
-- Retrieve the table data as it was before a specific timestamp
SELECT  COUNT(*) FROM patients 
 at (OFFSET => -260);
-- ANS IS 10
 -- Retrieve data as it was 1 day ago
SELECT COUNT(*)  FROM patients 
AT (TIMESTAMP => '2024-10-23 03:24:58.325 -0700');

SELECT * FROM PATIENTS
-- QUERY ID IS 01b7e158-3201-4ba2-0000-000aa446f721

delete from patients where PATIENT_ID=9
--THERFORE NOW THE COUNT IS 8

SELECT COUNT(*)  FROM patients 
AT ( STATEMENT=> '01b7e158-3201-4ba2-0000-000aa446f721');
-- ANS IS 8

SELECT CURRENT_TIMESTAMP() AS sys_timestamp;

2024-10-23 03:51:20.713 -0700

INSERT INTO Patients (Patient_ID, First_Name, Last_Name, Date_of_Birth, Gender, Phone_Number, Email, Address, City, State, Postal_Code, Insurance_ID)
VALUES (9, 'James', 'Garcia', '1969-08-21', 'M', '901-234-5678', 'james.garcia@example.com', '606 Palm St', 'Bakersfield', 'CA', '93301', 109),
(10, 'Jessica', 'Anderson', '1992-02-14', 'F', '012-345-6789', 'jessica.anderson@example.com', '707 Willow St', 'Santa Ana', 'CA', '92701', 110);

SELECT COUNT(*)  FROM patients 
AT ( TIMESTAMP => '2024-10-23 03:51:20.713 -0700');
-- ANS IS 8
