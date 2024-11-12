// creating Departments  table
CREATE TABLE Departments (
    Department_ID INT PRIMARY KEY,
    Department_Name VARCHAR(100),
    Location VARCHAR(255),
    Head_Staff_ID INT REFERENCES Staff(Staff_ID),
    Created_At TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


INSERT INTO Departments (Department_ID, Department_Name, Location, Head_Staff_ID)
VALUES 
(1, 'Cardiology', 'Building A, Floor 3', 1),
(2, 'Emergency', 'Building B, Ground Floor', 2),
(3, 'Pathology', 'Building C, Floor 1', 3),
(4, 'Neurology', 'Building A, Floor 4', 4),
(5, 'Pediatrics', 'Building D, Floor 2', 5),
(6, 'Orthopedics', 'Building E, Floor 3', 6),
(7, 'Pharmacy', 'Building F, Floor 1', 7),
(8, 'Administration', 'Building G, Floor 2', 8),
(9, 'Dermatology', 'Building H, Floor 3', 9),
(10, 'Radiology', 'Building I, Floor 1', 10);