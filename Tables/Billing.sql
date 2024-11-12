
//creating Billing  table
CREATE TABLE Billing (
    Billing_ID INT PRIMARY KEY,
    Patient_ID INT REFERENCES Patients(Patient_ID),
    Appointment_ID INT REFERENCES Appointments(Appointment_ID),
    Amount DECIMAL(10, 2),
    Billing_Date DATE,
    Payment_Status VARCHAR(50),
    Payment_Method VARCHAR(50),
    Insurance_Coverage DECIMAL(10, 2),
    Created_At TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO Billing (Billing_ID, Patient_ID, Appointment_ID, Amount, Billing_Date, Payment_Status, Payment_Method, Insurance_Coverage)
VALUES 
(1, 1, 1, 150.00, '2024-08-10', 'Paid', 'Credit Card', 120.00),
(2, 2, 2, 200.00, '2024-08-11', 'Paid', 'Insurance', 160.00),
(3, 3, 3, 180.00, '2024-08-12', 'Paid', 'Cash', 0.00),
(4, 4, 4, 100.00, '2024-08-13', 'Unpaid', 'Credit Card', 80.00),
(5, 5, 5, 250.00, '2024-08-14', 'Paid', 'Credit Card', 200.00),
(6, 6, 6, 300.00, '2024-08-15', 'Paid', 'Insurance', 240.00),
(7, 7, 7, 175.00, '2024-08-16', 'Paid', 'Cash', 0.00),
(8, 8, 8, 400.00, '2024-08-17', 'Paid', 'Insurance', 320.00),
(9, 9, 9, 220.00, '2024-08-18', 'Unpaid', 'Insurance', 176.00),
(10, 10, 10, 130.00, '2024-08-19', 'Paid', 'Credit Card', 104.00);
