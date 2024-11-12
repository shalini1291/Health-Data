CREATE TABLE Patients (
    Patient_ID INT PRIMARY KEY,
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    Date_of_Birth DATE,
    Gender CHAR(1),
    Phone_Number VARCHAR(15),
    Email VARCHAR(100),
    Address VARCHAR(255),
    City VARCHAR(100),
    State VARCHAR(100),
    Postal_Code VARCHAR(10),
    Insurance_ID INT,
    Created_At TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO Patients (Patient_ID, First_Name, Last_Name, Date_of_Birth, Gender, Phone_Number, Email, Address, City, State, Postal_Code, Insurance_ID)
VALUES 
(1, 'John', 'Doe', '1985-03-15', 'M', '123-456-7890', 'john.doe@example.com', '123 Main St', 'Los Angeles', 'CA', '90001', 101),
(2, 'Jane', 'Smith', '1990-06-22', 'F', '234-567-8901', 'jane.smith@example.com', '456 Elm St', 'San Francisco', 'CA', '94101', 102),
(3, 'Michael', 'Johnson', '1975-12-05', 'M', '345-678-9012', 'michael.johnson@example.com', '789 Oak St', 'San Diego', 'CA', '92101', 103),
(4, 'Emily', 'Davis', '1988-09-17', 'F', '456-789-0123', 'emily.davis@example.com', '101 Maple Ave', 'Sacramento', 'CA', '95814', 104),
(5, 'Robert', 'Brown', '1982-01-30', 'M', '567-890-1234', 'robert.brown@example.com', '202 Pine St', 'Fresno', 'CA', '93701', 105),
(6, 'Laura', 'Wilson', '1978-04-25', 'F', '678-901-2345', 'laura.wilson@example.com', '303 Cedar St', 'San Jose', 'CA', '95101', 106),
(7, 'David', 'Miller', '1995-07-12', 'M', '789-012-3456', 'david.miller@example.com', '404 Birch St', 'Long Beach', 'CA', '90801', 107),
(8, 'Sarah', 'Martinez', '1983-11-03', 'F', '890-123-4567', 'sarah.martinez@example.com', '505 Redwood St', 'Oakland', 'CA', '94601', 108),
(9, 'James', 'Garcia', '1969-08-21', 'M', '901-234-5678', 'james.garcia@example.com', '606 Palm St', 'Bakersfield', 'CA', '93301', 109),
(10, 'Jessica', 'Anderson', '1992-02-14', 'F', '012-345-6789', 'jessica.anderson@example.com', '707 Willow St', 'Santa Ana', 'CA', '92701', 110);
