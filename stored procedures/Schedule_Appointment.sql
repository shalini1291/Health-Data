CREATE OR REPLACE PROCEDURE Schedule_Appointment(
    Appointment_ID INT,
    Patient_ID INT,
    Doctor_ID INT,
    Appointment_Date DATE,
    Appointment_Time TIME,
    Reason VARCHAR
)
RETURNS STRING
LANGUAGE SQL
AS
$$
BEGIN
    INSERT INTO Appointments (Appointment_ID ,Patient_ID, Doctor_ID, Appointment_Date, Appointment_Time, Reason, Status, Created_At)
    VALUES (Appointment_ID ,Patient_ID, Doctor_ID, Appointment_Date, Appointment_Time, Reason, 'Scheduled', CURRENT_TIMESTAMP());

    RETURN 'Appointment scheduled successfully';
END;
$$;
