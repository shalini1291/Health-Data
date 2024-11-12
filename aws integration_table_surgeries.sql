CREATE OR REPLACE TABLE Surgeries (
    Surgery_ID INT  PRIMARY KEY,
    Patient_ID INT,
    Doctor_ID INT,
    Surgery_Date DATE,
    Surgery_Type STRING,
    Surgery_Notes STRING,
    Duration INT,
    Outcome STRING,
    Created_At TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Updated_At TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
