CREATE OR REPLACE PROCEDURE Generate_Bill(
     Billing_ID INT,
     Patient_ID INT,
    Appointment_ID INT,
    Amount DECIMAL(10,2),
    Payment_Method VARCHAR,
    Insurance_Coverage DECIMAL(10,2)
)
RETURNS STRING
LANGUAGE SQL
AS
$$
BEGIN
    INSERT INTO Billing (Billing_ID,Patient_ID, Appointment_ID, Amount, Billing_Date, Payment_Status, Payment_Method, Insurance_Coverage, Created_At)
    VALUES (Billing_ID,Patient_ID, Appointment_ID, Amount, CURRENT_TIMESTAMP(), 'Pending', Payment_Method, Insurance_Coverage, CURRENT_TIMESTAMP());

    RETURN 'Bill generated successfully';
END;
$$;
