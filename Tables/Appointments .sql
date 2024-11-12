
CREATE TABLE Appointments (
    Appointment_ID INT PRIMARY KEY,
    Patient_ID INT REFERENCES Patients(Patient_ID),
    Doctor_ID INT REFERENCES Doctors(Doctor_ID),
    Appointment_Date DATE,
    Appointment_Time TIME,
    Reason VARCHAR(255),
    Status VARCHAR(50),
    Created_At TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


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