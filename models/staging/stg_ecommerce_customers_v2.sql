{{ config(materialized='view') }}

SELECT
    *
FROM {{ ref('ecommerce_customer_behavior_dataset_v2') }}