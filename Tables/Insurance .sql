//creating Insurance  table
CREATE TABLE Insurance (
    Insurance_ID INT PRIMARY KEY,
    Insurance_Provider VARCHAR(100),
    Policy_Number VARCHAR(100),
    Coverage_Start_Date DATE,
    Coverage_End_Date DATE,
    Created_At TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO Insurance (Insurance_ID, Insurance_Provider, Policy_Number, Coverage_Start_Date, Coverage_End_Date)
VALUES 
(1, 'Blue Cross', 'BC123456789', '2024-01-01', '2024-12-31'),
(2, 'Aetna', 'AE987654321', '2024-02-01', '2025-01-31'),
(3, 'UnitedHealthcare', 'UH112233445', '2024-03-01', '2025-02-28'),
(4, 'Cigna', 'CG556677889', '2024-04-01', '2025-03-31'),
(5, 'Kaiser Permanente', 'KP998877665', '2024-05-01', '2025-04-30'),
(6, 'Humana', 'HM223344556', '2024-06-01', '2025-05-31'),
(7, 'Anthem', 'AN334455667', '2024-07-01', '2025-06-30'),
(8, 'Molina Healthcare', 'MH445566778', '2024-08-01', '2025-07-31'),
(9, 'WellCare', 'WC556677889', '2024-09-01', '2025-08-31'),
(10, 'Oscar Health', 'OS667788990', '2024-10-01', '2025-09-30');