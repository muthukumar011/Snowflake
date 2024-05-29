-- Insert Table Promotion -- 

INSERT INTO ORDER_BASE.T_PROMOTION (
    PROMOTION_ID,
    CUSTOMER_CATEGORY,
    PROMOTION_TYPE,
    PROMOTION_VALUE,
    COMMENTS
) VALUES 
    ('P001', 'Gold', 'Discount', 10.00, 'PERCENT'),
    ('P002', 'Silver', 'Discount', 5.00, 'PERCENT'),
    ('P003', 'Bronze', 'Discount', 1.00, 'PERCENT'),
    ('P004', 'Regular', 'Coupon_X', 0.03, 'AMOUNT'),
    ('P005', 'Regular', 'Coupon_Y', 0.02, 'AMOUNT'),
    ('P006', 'Regular', 'Coupon_Z', 0.01, 'AMOUNT'),
    ('P007', 'Gold', 'Loyalty', 100.00, 'POINTS/1000 SPENT'),
    ('P008', 'Silver', 'Loyalty', 50.00, 'POINTS/1000 SPENT'),
    ('P008', 'Bronze', 'Loyalty', 30.00, 'POINTS/1000 SPENT');