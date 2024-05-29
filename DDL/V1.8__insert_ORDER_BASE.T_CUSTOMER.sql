-- Insert Table CUSTOMER --

INSERT INTO ORDER_BASE.T_CUSTOMER (CUSTOMER_ID, ADDRESS, PHONE_NO, CATEGORY, STATUS, TOTAL_ORDERS,
TOTAL_INVOICE_AMOUNT, LOYALTY_POINTS, CREATE_DATE, CREATE_USER)   
SELECT 
    CUSTOMER_ID, 
    ADDRESS, 
    PHONE_NO,
    CATEGORY,
    STATUS, 
    Null AS TOTAL_ORDERS,
    Null AS TOTAL_INVOICE_AMOUNT,
    LOYALTY_POINTS,
    CREATE_DATE,
    CREATE_USER
FROM (
    VALUES
    ('C001', '123 Main St, Cityville', '9876543210', 'Gold', 'Active', '10', '2023-04-15', 'admin01'),
    ('C002', '456 Elm St, Townsville', '8765432109', 'Silver', 'Active', '300', '2023-06-20', 'admin02'),
    ('C003', '789 Oak St, Villageton', '7654321098', 'Bronze', 'Active', '190', '2023-08-10', 'admin03'),
    ('C004', '101 Pine St, Hamletville', '6543210987', 'Regular', 'Active', '0','2023-10-05', 'admin04'),
    ('C005', '103 new St, Chennai', '6543210987', 'Regular', 'InActive', '0','2023-10-05', 'admin04'),
    ('C006', '105 old St, Chennai', '6543213817', 'Regular', 'Active', '0','2023-10-16', 'admin04'),
    ('C007', '23 Neela West, Chennai', '6543213257', 'Regular', 'Active','0','2023-10-16', 'admin04')
) AS data(CUSTOMER_ID, ADDRESS, PHONE_NO, CATEGORY, STATUS, LOYALTY_POINTS, CREATE_DATE, CREATE_USER);