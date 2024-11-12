CREATE OR REPLACE PROCEDURE Discharge_Patient(
    Patient_ID INT
)
RETURNS STRING
LANGUAGE SQL
AS
$$
BEGIN
    UPDATE Appointments
    SET Status = 'Discharged'
    WHERE Patient_ID = Patient_ID AND Status = 'Scheduled';

    UPDATE Billing
    SET Payment_Status = 'Paid'
    WHERE Patient_ID = Patient_ID AND Payment_Status = 'Pending';

    RETURN 'Patient discharged and billing status updated';
END;
$$;
