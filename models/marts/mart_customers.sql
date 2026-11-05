
{{ config(materialized='table') }}

SELECT
    Customer_ID,
    MAX(Age) AS Age,
    MAX(Gender) AS Gender,
    MAX(City) AS City,
    COUNT(*) AS Total_Orders,
    SUM(Total_Amount) AS Total_Spending,
    AVG(Total_Amount) AS Average_Order_Value,
    AVG(Session_Duration_Minutes) AS Avg_Session_Duration,
    AVG(Pages_Viewed) AS Avg_Pages_Viewed
FROM ecommerce_customer_behavior_dataset_v2
GROUP BY Customer_ID
