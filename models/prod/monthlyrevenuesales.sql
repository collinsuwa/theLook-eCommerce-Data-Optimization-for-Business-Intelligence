SELECT
  EXTRACT(MONTH FROM oi.Created_at) AS months,
  --DATE_TRUNC(DATE(oi.Created_at), MONTH) AS order_date,
  ROUND(SUM(oi.sale_price * o.num_of_item), 2) AS revenue,
  COUNT(DISTINCT oi.order_id) AS order_count,
  COUNT(DISTINCT oi.user_id) AS customers_purchased
FROM 
    {{ ref("stgOrderItems") }} oi
INNER JOIN 
    {{ ref("stgOrders") }} o 
ON 
    oi.order_id = o.order_id
GROUP BY 
    1
ORDER BY 
    2 DESC