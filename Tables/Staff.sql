// creating Staff  table
CREATE TABLE Staff (
    Staff_ID INT PRIMARY KEY,
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    Role VARCHAR(100),
    Department VARCHAR(100),
    Phone_Number VARCHAR(15),
    Email VARCHAR(100),
    Created_At TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO Staff (Staff_ID, First_Name, Last_Name, Role, Department, Phone_Number, Email)
VALUES 
(1, 'John', 'Doe', 'Doctor', 'Cardiology', '555-123-4567', 'john.doe@hospital.com'),
(2, 'Jane', 'Smith', 'Nurse', 'Emergency', '555-234-5678', 'jane.smith@hospital.com'),
(3, 'Emily', 'Davis', 'Lab Technician', 'Pathology', '555-345-6789', 'emily.davis@hospital.com'),
(4, 'Michael', 'Brown', 'Doctor', 'Neurology', '555-456-7890', 'michael.brown@hospital.com'),
(5, 'Sarah', 'Wilson', 'Nurse', 'Pediatrics', '555-567-8901', 'sarah.wilson@hospital.com'),
(6, 'David', 'Johnson', 'Surgeon', 'Orthopedics', '555-678-9012', 'david.johnson@hospital.com'),
(7, 'Laura', 'Lee', 'Pharmacist', 'Pharmacy', '555-789-0123', 'laura.lee@hospital.com'),
(8, 'James', 'Miller', 'Administrative Assistant', 'Administration', '555-890-1234', 'james.miller@hospital.com'),
(9, 'Anna', 'Martinez', 'Doctor', 'Dermatology', '555-901-2345', 'anna.martinez@hospital.com'),
(10, 'Robert', 'Garcia', 'Radiologist', 'Radiology', '555-012-3456', 'robert.garcia@hospital.com');