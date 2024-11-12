SELECT * FROM Patients
--ANS IS Total Execution Time: IS 400ms)


ALTER TABLE Patients
 CLUSTER BY(City, State);

 SELECT * FROM Patients
 Total Execution Time is :24ms)

 -- Clustering for Medical_Records
ALTER TABLE Medical_Records
  CLUSTER BY (Patient_ID, Visit_Date);

-- Clustering for Doctors
ALTER TABLE Doctors
  CLUSTER BY (Specialization);

-- Clustering for Appointments
ALTER TABLE Appointments
  CLUSTER BY (Doctor_ID, Patient_ID, Appointment_Date);

-- Clustering for Billing
ALTER TABLE Billing
  CLUSTER BY (Patient_ID, Billing_Date);

-- Clustering for Insurance
ALTER TABLE Insurance
  CLUSTER BY (Insurance_Provider, Coverage_Start_Date);

-- Clustering for Prescriptions
ALTER TABLE Prescriptions
  CLUSTER BY (Patient_ID, Medication_Name);

-- Clustering for Lab_Results
ALTER TABLE Lab_Results
  CLUSTER BY (Patient_ID, Test_Date);

-- Clustering for Staff
ALTER TABLE Staff
  CLUSTER BY (Department);

-- Clustering for Departments
ALTER TABLE Departments
  CLUSTER BY (Department_Name);

-- Re-cluster the tables
ALTER TABLE Patients RECLUSTER;
ALTER TABLE Medical_Records RECLUSTER;
ALTER TABLE Doctors RECLUSTER;
ALTER TABLE Appointments RECLUSTER;
ALTER TABLE Billing RECLUSTER;
ALTER TABLE Insurance RECLUSTER;
ALTER TABLE Prescriptions RECLUSTER;
ALTER TABLE Lab_Results RECLUSTER;
ALTER TABLE Staff RECLUSTER;
ALTER TABLE Departments RECLUSTER;
