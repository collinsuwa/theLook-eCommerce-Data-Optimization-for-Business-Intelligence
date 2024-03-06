SELECT p.id, p.name, p.category, SUM(o.num_of_item) AS total_sold
FROM 
    {{ ref("stgProducts") }} p
JOIN 
    {{ ref("stgOrderItems") }} oi ON p.id = oi.product_id
JOIN 
    {{ ref("stgOrders") }} o ON oi.order_id = o.order_id
GROUP BY 
    p.id, p.name, p.category
ORDER BY 
    total_sold DESC
LIMIT 10
    