-- Insert Table SALES ORDER HEADER --

INSERT INTO ORDER_BASE.T_SALES_ORDER_HEADER (ORDER_ID, ORDER_DATE, STATUS, CUSTOMER_ID, ITEM_COUNT, 
TOTAL_AMOUNT, DISCOUNT, COUPON_CODE, CREATE_DATE, CREATE_USER) 
SELECT 
    ORDER_ID, 
    ORDER_DATE, 
    STATUS, 
    CUSTOMER_ID, 
    NULL AS ITEM_COUNT,
    NULL AS TOTAL_AMOUNT,
    NULL AS DISCOUNT,
    COUPON_CODE,
    CREATE_DATE,
    CREATE_USER
FROM (
    VALUES
    ('ORD001', '2024-06-05', 'Open', 'C001', 'Discount','2024-05-20', 'admin01'),
    ('ORD002', '2024-06-06', 'Open', 'C001', 'Discount', '2024-05-21', 'admin01'),
    ('ORD003', '2024-05-27', 'Closed','C001', 'Discount', '2024-05-22', 'admin01'),
    ('ORD004', '2024-05-29', 'Open','C002',  'Discount', '2024-05-20', 'admin02'),
    ('ORD005', '2024-05-23', 'Closed', 'C002', 'Discount', '2024-05-20', 'admin02'),
    ('ORD006', '2024-06-02', 'Open', 'C002', 'Discount', '2024-05-22', 'admin03'),
    ('ORD007', '2024-06-29', 'Open','C003', 'Discount', '2024-05-20', 'admin02'),
    ('ORD008', '2024-05-03', 'Open','C003', 'Discount', '2024-05-20', 'admin02'),
    ('ORD009', '2024-06-02', 'Open','C004', 'Coupon_X', '2024-05-21', 'admin03'),
    ('ORD010', '2024-05-14', 'Closed', 'C006', 'Coupon_Z', '2024-05-20', 'admin02'),
    ('ORD011', '2024-06-11', 'Open', 'C007', 'Coupon_Y', '2024-05-24', 'admin03')
) AS data(ORDER_ID, ORDER_DATE, STATUS, CUSTOMER_ID, COUPON_CODE, CREATE_DATE, CREATE_USER);
