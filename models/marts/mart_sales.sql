
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
FROM {{ ref('stg_ecommerce_customers_v2') }}
