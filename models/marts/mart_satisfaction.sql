
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
FROM ecommerce_customer_behavior_dataset_v2
