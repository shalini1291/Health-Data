//creating Lab_Results  table
CREATE TABLE Lab_Results (
    Lab_Result_ID INT PRIMARY KEY,
    Patient_ID INT REFERENCES Patients(Patient_ID),
    Test_Name VARCHAR(255),
    Test_Date DATE,
    Test_Result VARCHAR(255),
    Doctor_ID INT REFERENCES Doctors(Doctor_ID),
    Notes TEXT,
    Created_At TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO Lab_Results (Lab_Result_ID, Patient_ID, Test_Name, Test_Date, Test_Result, Doctor_ID, Notes)
VALUES 
(1, 1, 'Complete Blood Count (CBC)', '2024-08-10', 'Normal', 1, 'Routine check-up, no issues found.'),
(2, 2, 'Liver Function Test (LFT)', '2024-08-11', 'Elevated ALT levels', 2, 'Patient advised to reduce alcohol intake.'),
(3, 3, 'Lipid Panel', '2024-08-12', 'High cholesterol', 3, 'Patient prescribed statins.'),
(4, 4, 'Urinalysis', '2024-08-13', 'Possible UTI', 4, 'Patient referred to urologist.'),
(5, 5, 'Thyroid Function Test', '2024-08-14', 'Hypothyroidism', 5, 'Patient started on levothyroxine.'),
(6, 6, 'Blood Glucose Test', '2024-08-15', 'Pre-diabetes', 6, 'Diet and exercise recommended.'),
(7, 7, 'Electrolyte Panel', '2024-08-16', 'Low potassium', 7, 'Potassium supplements prescribed.'),
(8, 8, 'Kidney Function Test', '2024-08-17', 'Normal', 8, 'Routine check-up, no issues found.'),
(9, 9, 'Hemoglobin A1c', '2024-08-18', 'Diabetes', 9, 'Patient referred to endocrinologist.'),
(10, 10, 'Chest X-Ray', '2024-08-19', 'Normal', 10, 'No signs of infection or abnormalities.');
INSERT INTO Appointments (Appointment_ID, Patient_ID, Doctor_ID, Appointment_Date, Appointment_Time, Reason, Status)
VALUES 
(1, 1, 1, '2024-08-10', '09:00', 'Routine Checkup', 'Completed'),
(2, 2, 2, '2024-08-11', '10:00', 'Headache', 'Completed'),
(3, 3, 3, '2024-08-12', '11:00', 'Knee Pain', 'Completed'),
(4, 4, 4, '2024-08-13', '14:00', 'Fever', 'Cancelled'),
(5, 5, 5, '2024-08-14', '15:00', 'Skin Rash', 'Completed'),
(6, 6, 6, '2024-08-15', '16:00', 'Surgery Consultation', 'Completed'),
(7, 7, 7, '2024-08-16', '09:30', 'Stomach Pain', 'Completed'),
(8, 8, 8, '2024-08-17', '10:30', 'Chemotherapy Follow-up', 'Completed'),
(9, 9, 9, '2024-08-18', '11:30', 'Diabetes Checkup', 'Rescheduled'),
(10, 10, 10, '2024-08-19', '13:00', 'Anxiety', 'Completed');