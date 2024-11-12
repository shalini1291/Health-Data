use health_db

SELECT * FROM TEMP_BILLING

SELECT * FROM TRANSIENT_BILLING

 Cloning a Table
-- CLONING AT TABLE

 CREATE or replace TABLE DEPARTMENTS_CLONE CLONE DEPARTMENTS
before (offset =>-500);

 select current_timestamp from dual

CREATE TABLE DEPARTMENTS_CLONE CLONE DEPARTMENTS;
AT (TIMESTAMP '2024-10-23 04:15:01.880 -0700');

select count(*) from DEPARTMENTS_CLONE
--the ans is 10

-- NOW CREATING AN ANOTHER CLONE TBALE TO CHECK IF IT HAS 
    
INSERT INTO Departments (Department_ID, Department_Name, Location, Head_Staff_ID)
VALUES (11, 'Dentistry', 'Building F, 3rd Floor', 11);

    
2024-10-23 04:15:01.880 -0700

