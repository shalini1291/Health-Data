-- creating a Table first
CREATE or replace TABLE Surgeries (
    Surgery_ID INT PRIMARY KEY,
    Patient_ID INT,
    Doctor_ID INT,
    Surgery_Type VARCHAR(255),
    Surgery_Date DATE,
    Surgery_Time TIME,
    Outcome VARCHAR(255),
    Follow_Up_Required BOOLEAN,
    Created_At TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (Patient_ID) REFERENCES Patients(Patient_ID),
    FOREIGN KEY (Doctor_ID) REFERENCES Doctors(Doctor_ID)
);

-- Step 1: Create a storage integration
CREATE STORAGE INTEGRATION aws_integration
  TYPE = 'EXTERNAL_STAGE'
  STORAGE_PROVIDER = 'S3'
  ENABLED = TRUE
  STORAGE_AWS_ROLE_ARN = 'arn:aws:iam::025066277957:role/role_stores_data'
  STORAGE_ALLOWED_LOCATIONS = ('s3://bucket-13032024')
  COMMENT = 'Storage integration for AWS S3';

  -- Step 3: Create a file format
CREATE FILE FORMAT csv_load_format
    TYPE = 'CSV'
    COMPRESSION = 'AUTO'
    FIELD_DELIMITER = ','
    RECORD_DELIMITER = '\n'
    SKIP_HEADER = 1
    FIELD_OPTIONALLY_ENCLOSED_BY = '\042'
    TRIM_SPACE = FALSE
    ERROR_ON_COLUMN_COUNT_MISMATCH = TRUE
    ESCAPE = 'NONE'
    ESCAPE_UNENCLOSED_FIELD = '\134'
    DATE_FORMAT = 'AUTO';

DESC INTEGRATION aws_stores_data
  
-- Step 3: Create an external stage
CREATE STAGE surgeries_external_stage
      STORAGE_INTEGRATION = aws_integration
      URL = 's3://snowflakedata12082024/healthdatafolder/healthdetails_folder/surgeries_data.csv/'
      FILE_FORMAT = csv_load_format
      COMMENT = 'External stage for storing surgeries data';
      
-- Step 4: Copying into external stage
COPY INTO Surgeries
    FROM @surgeries_external_stage
    FILE_FORMAT = (TYPE = 'CSV' FIELD_OPTIONALLY_ENCLOSED_BY='"')
    ON_ERROR = 'CONTINUE';

-- RETREIVING DATA
SELECT * FROM Surgeries
-- ans is
1	1	101	Appendectomy	2024-01-15	09:00:00	Successful	TRUE	2024-01-15 09:00:00.000
2	2	102	Knee Replacement	2024-02-20	11:30:00	Successful	TRUE	2024-02-20 11:30:00.000
3	3	103	Cataract Surgery	2024-03-05	10:00:00	Successful	FALSE	2024-03-05 10:00:00.000
4	4	104	Heart Bypass	2024-04-10	15:45:00	Complications	TRUE	2024-04-10 15:45:00.000
5	5	105	Gallbladder Removal	2024-05-22	14:15:00	Successful	TRUE	2024-05-22 14:15:00.000
6	6	101	Hernia Repair	2024-06-30	08:30:00	Successful	FALSE	2024-06-30 08:30:00.000
7	7	102	Spinal Fusion	2024-07-25	12:00:00	Successful	TRUE	2024-07-25 12:00:00.000
8	8	103	Hip Replacement	2024-08-14	09:30:00	Successful	TRUE	2024-08-14 09:30:00.000
9	9	104	Coronary Angioplasty	2024-09-10	13:00:00	Successful	FALSE	2024-09-10 13:00:00.000
10	10	105	Tonsillectomy	2024-10-05	11:00:00	Successful	FALSE	2024-10-05 11:00:00.000



