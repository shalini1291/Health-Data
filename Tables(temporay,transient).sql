-- time travel--at, before (timestamp, offset, statement id)
use health_db
select * from appointments

SELECT CURRENT_TIMESTAMP();

-- ans i 2024-10-23 03:04:49.877 -0700

use health_db

CREATE TEMPORARY TABLE TEMP_BILLING AS 
SELECT * 
FROM BILLING
WHERE PAYMENT_STATUS = 'Paid';

SELECT * FROM TEMP_BILLING

-- OPENING THIS QUAERY IN ANOTHER WORKSHEET AND LETS SEE IF IT IS WORKING
-- IT IS SHOWIG COMPILATION ERROR
--NAOW CREATING TRANSIENT TABLE

CREATE OR REPLACE TRANSIENT  TABLE TRANSIENT_BILLING AS 
SELECT * 
FROM BILLING
WHERE PAYMENT_STATUS = 'Paid';