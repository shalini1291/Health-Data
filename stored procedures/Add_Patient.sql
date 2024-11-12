use database health_db

CREATE OR REPLACE PROCEDURE Add_Patient(
    Patient_ID number,
    First_Name STRING,
    Last_Name STRING,
    Date_of_Birth STRING,
    Gender STRING,
    Phone_Number STRING,
    Email STRING,
    Address STRING,
    City STRING,
    State STRING,
    Postal_Code STRING,
    Insurance_ID number
)
RETURNS STRING
LANGUAGE SQL
AS
$$
BEGIN
    INSERT INTO Patients (First_Name, Last_Name, Date_of_Birth, Gender, Phone_Number, Email, Address, City, State, Postal_Code, Insurance_ID, Created_At)
    VALUES (First_Name, Last_Name, Date_of_Birth, Gender, Phone_Number, Email, Address, City, State, Postal_Code, Insurance_ID, CURRENT_TIMESTAMP());

    RETURN 'Patient record added successfully';
END;
$$;