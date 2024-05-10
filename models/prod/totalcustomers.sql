SELECT 
  COUNT(DISTINCT id) AS total_customers
FROM 
    {{ ref("stgUsers") }}