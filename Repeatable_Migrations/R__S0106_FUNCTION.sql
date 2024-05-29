-- Calculate the Total Amount -- Fucntion--

CREATE OR REPLACE FUNCTION Calculate_Total_Amount(customer_category VARCHAR, promotion_type VARCHAR, total_amount Number)
  RETURNS Number
  LANGUAGE SQL
  AS
  $$
    CASE 
        WHEN customer_category = 'Regular' AND promotion_type = 'Coupon_X' THEN total_amount - (total_amount * 0.03)
        WHEN customer_category = 'Regular' AND promotion_type = 'Coupon_Y' THEN total_amount - (total_amount * 0.02)
        WHEN customer_category = 'Regular' AND promotion_type = 'Coupon_Z' THEN total_amount - (total_amount * 0.01)
        WHEN customer_category = 'Gold' AND promotion_type = 'Discount' THEN total_amount - (total_amount * 5/100)
        WHEN customer_category = 'Silver' AND promotion_type = 'Discount' THEN total_amount - (total_amount * 3/100)
        WHEN customer_category = 'Bronze' AND promotion_type = 'Discount' THEN total_amount - (total_amount * 1/100)
        ELSE total_amount
    END
  $$;
