CREATE OR REPLACE PROCEDURE Update_Insurance(
    Insurance_ID INT,
    Insurance_Provider VARCHAR,
    Policy_Number VARCHAR,
    Coverage_Start_Date DATE,
    Coverage_End_Date DATE
)
RETURNS STRING
LANGUAGE SQL
AS
$$
BEGIN
    UPDATE Insurance
    SET Insurance_Provider = Insurance_Provider,
        Policy_Number = Policy_Number,
        Coverage_Start_Date = Coverage_Start_Date,
        Coverage_End_Date = Coverage_End_Date,
        Created_At = CURRENT_TIMESTAMP()
    WHERE Insurance_ID = Insurance_ID;

    RETURN 'Insurance information updated successfully';
END;
$$;
