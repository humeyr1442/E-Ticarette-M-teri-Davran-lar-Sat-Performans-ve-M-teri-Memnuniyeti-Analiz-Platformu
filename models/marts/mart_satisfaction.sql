
{{ config(materialized='table') }}

SELECT
    Order_ID,
    Customer_ID,
    Date,
    City,
    Product_Category,
    Customer_Rating,
    Delivery_Time_Days,
    Is_Returning_Customer,
    Session_Duration_Minutes,
    Pages_Viewed
FROM {{ ref('stg_ecommerce_customers_v2') }}
