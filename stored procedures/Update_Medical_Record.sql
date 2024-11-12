CREATE OR REPLACE PROCEDURE Update_Medical_Record(
    Record_ID INT,
    Diagnosis VARCHAR,
    Treatment VARCHAR,
    Prescription VARCHAR,
    Notes VARCHAR
)
RETURNS STRING
LANGUAGE SQL
AS
$$
BEGIN
    UPDATE Medical_Records
    SET Diagnosis = Diagnosis,
        Treatment = Treatment,
        Prescription = Prescription,
        Notes = Notes,
        Created_At = CURRENT_TIMESTAMP()
    WHERE Record_ID = Record_ID;

    RETURN 'Medical record updated successfully';
END;
$$;
