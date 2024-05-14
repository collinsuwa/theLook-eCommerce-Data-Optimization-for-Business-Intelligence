SELECT
  CASE
    WHEN u.age < 12 THEN 'Kids'
    WHEN u.age BETWEEN 12 AND 20 THEN 'Teenagers'
    WHEN u.age BETWEEN 20 AND 30 THEN 'Young Adults'
    WHEN u.age BETWEEN 30 AND 50 THEN 'Adults'
    WHEN u.age > 50 THEN 'Elderly'
    END AS age_group,
  COUNT(DISTINCT oi.user_id) AS total_customer
FROM 
    {{ ref("stgOrderItems") }} oi
INNER JOIN 
    {{ ref("stgUsers") }} u
ON 
    oi.user_id = u.id
GROUP BY age_group
ORDER BY total_customer DESC