SELECT 
  COUNT(DISTINCT country) AS total_country
FROM 
    {{ ref("stgUsers") }}