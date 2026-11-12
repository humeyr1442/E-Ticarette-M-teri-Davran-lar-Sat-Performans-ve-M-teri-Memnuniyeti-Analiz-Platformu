
{{ config(materialized='table') }}

SELECT
    Order_ID,
    Customer_ID,
    Date,
    City,
    Product_Category,
    Unit_Price,
    Quantity,
    Discount_Amount,
    Total_Amount,
    Payment_Method
FROM {{ ref('ecommerce_customer_behavior_dataset_v2') }}
