CREATE NETWORK POLICY healthcare_network_policy
    ALLOWED_IP_LIST = ('192.168.1.1', '192.168.1.2/24', '10.0.0.0/16')
    BLOCKED_IP_LIST = ('0.0.0.0/8');

    ALTER USER admin_user
    SET NETWORK_POLICY = healthcare_network_policy;

    SHOW NETWORK POLICIES;
