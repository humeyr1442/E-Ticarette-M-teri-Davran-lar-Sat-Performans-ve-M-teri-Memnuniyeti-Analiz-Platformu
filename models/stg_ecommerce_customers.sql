select distinct
    customer_id,
    Product_Category,
    Payment_Method,
    Unit_Price,
    Session_Duration_Minutes,
    current_timestamp as loaded_at
from {{ ref('ecommerce_customer_behavior_dataset') }}