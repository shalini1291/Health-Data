CREATE OR REPLACE ALERT High_Billing_Alert
  WAREHOUSE = 'HEALTH_WH'
  SCHEDULE = 'USING CRON 0 * * * * UTC'  -- Runs every hour
  COMMENT = 'Alert for unusually high billing amounts'
  BEGIN
  SELECT Billing_ID, Patient_ID, Amount
  FROM Billing
  WHERE Amount > 10000 AND Payment_Status = 'Pending';
  END;

  CREATE OR REPLACE ALERT High_Billing_Alert
  WAREHOUSE = 'HEALTH_WH'
  SCHEDULE = 'USING CRON 0 * * * * UTC'  -- Runs every hour
  COMMENT = 'Alert for unusually high billing amounts'
AS
  if (Amount > 10000 AND Payment_Status = 'Pending') from SELECT *
  FROM Billing
  
THEN 
  CALL SYSTEM$SEND_EMAIL_ON_HIGHER_AMOUNT_UNPAID(
    'High Billing Alert',
    'A billing amount over $10,000 has been detected for Billing_ID: ' || Billing_ID || 
    '. Patient_ID: ' || Patient_ID || '. Amount: ' || Amount
  );