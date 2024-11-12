use health_db

-- Step 1: Create a stream for the Patients table
CREATE OR REPLACE STREAM patients_stream
  ON TABLE Patients
  APPEND_ONLY = FALSE; 

--Trying to update patients row of a record

(4, 'Emily', 'Davis', '1988-09-17', 'F', '456-789-0123', 'emily.davis1@example.com', '101 Maple Ave', 'Sacramento', 'CA', '95814', 104),

update patients
set Email='davis.emily1@example.com'
where Patient_id=4

select * from patients_stream

CREATE OR REPLACE STREAM prescriptions_stream ON TABLE Prescriptions APPEND_ONLY = FALSE;

CREATE OR REPLACE STREAM medical_records_stream ON TABLE Medical_Records APPEND_ONLY = TRUE;

CREATE OR REPLACE STREAM staff_stream ON TABLE Staff APPEND_ONLY = FALSE;

CREATE OR REPLACE STREAM insurance_stream ON TABLE Insurance APPEND_ONLY = FALSE;
