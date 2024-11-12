create database health_db

use health_db

CREATE WAREHOUSE health_wh
    WITH 
    WAREHOUSE_SIZE = 'XSMALL'  -- Correct specification of warehouse size
    MAX_CLUSTER_COUNT = 4
    MIN_CLUSTER_COUNT = 1
    SCALING_POLICY = 'STANDARD'
    AUTO_RESUME = TRUE
    AUTO_SUSPEND = 60  -- Set time to auto-suspend after inactivity in seconds (optional)
    INITIALLY_SUSPENDED = FALSE;

use warehouse health_wh

use database health_db