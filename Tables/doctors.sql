// creating Doctors  table
CREATE TABLE Doctors (
    Doctor_ID INT PRIMARY KEY,
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    Specialization VARCHAR(100),
    Phone_Number VARCHAR(15),
    Email VARCHAR(100),
    Office_Location VARCHAR(255),
    Created_At TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


INSERT INTO Doctors (Doctor_ID, First_Name, Last_Name, Specialization, Phone_Number, Email, Office_Location)
VALUES 
(1, 'Alice', 'Wong', 'Cardiology', '123-555-1234', 'alice.wong@hospital.com', 'Building A, Room 101'),
(2, 'Brian', 'Lee', 'Neurology', '234-555-2345', 'brian.lee@hospital.com', 'Building B, Room 202'),
(3, 'Catherine', 'Taylor', 'Orthopedics', '345-555-3456', 'catherine.taylor@hospital.com', 'Building C, Room 303'),
(4, 'Daniel', 'Kim', 'Pediatrics', '456-555-4567', 'daniel.kim@hospital.com', 'Building D, Room 404'),
(5, 'Elena', 'Rivera', 'Dermatology', '567-555-5678', 'elena.rivera@hospital.com', 'Building E, Room 505'),
(6, 'Frank', 'Nguyen', 'General Surgery', '678-555-6789', 'frank.nguyen@hospital.com', 'Building F, Room 606'),
(7, 'Grace', 'Patel', 'Gastroenterology', '789-555-7890', 'grace.patel@hospital.com', 'Building G, Room 707'),
(8, 'Henry', 'Baker', 'Oncology', '890-555-8901', 'henry.baker@hospital.com', 'Building H, Room 808'),
(9, 'Isabella', 'Martinez', 'Endocrinology', '901-555-9012', 'isabella.martinez@hospital.com', 'Building I, Room 909'),
(10, 'Jack', 'Rodriguez', 'Psychiatry', '012-555-0123', 'jack.rodriguez@hospital.com', 'Building J, Room 010');
