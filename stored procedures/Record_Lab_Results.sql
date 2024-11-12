CREATE OR REPLACE PROCEDURE Record_Lab_Results(
    Lab_Result_ID INT,
    Patient_ID INT,
    Test_Name VARCHAR,
    Test_Date DATE,
    Test_Result VARCHAR,
    Doctor_ID INT,
    Notes VARCHAR
)
RETURNS STRING
LANGUAGE SQL
AS
$$
BEGIN
    INSERT INTO Lab_Results (Lab_Result_ID,Patient_ID, Test_Name, Test_Date, Test_Result, Doctor_ID, Notes, Created_At)
    VALUES (Lab_Result_ID,Patient_ID, Test_Name, Test_Date, Test_Result, Doctor_ID, Notes, CURRENT_TIMESTAMP());

    RETURN 'Lab results recorded successfully';
END;
$$;
