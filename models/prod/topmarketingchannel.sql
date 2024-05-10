SELECT 
  u.traffic_source AS traffic_source,
  COUNT(DISTINCT oi.user_id) AS total_customers
FROM 
    {{ ref("stgOrderItems") }} oi
FULL JOIN {{ ref("stgUsers") }} u
ON 
    oi.user_id = u.id
GROUP BY traffic_source
ORDER BY total_customers DESC