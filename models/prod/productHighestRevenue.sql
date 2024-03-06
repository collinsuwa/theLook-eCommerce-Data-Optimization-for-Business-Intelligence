SELECT  
    DISTINCT oi.product_id, 
            p.name AS product_name,
            oi.sale_price,
            SUM (o.num_of_item) total_amount_purchased,
            (oi.sale_price * SUM (o.num_of_item)) total_sales_revenue
FROM 
    {{ ref("stgOrderItems") }} oi
INNER JOIN 
{{ ref("stgOrders") }} o
ON  oi.order_id = o.order_id
INNER JOIN 
{{ ref("stgProducts") }} p
ON  oi.product_id = p.id
WHERE oi.status = "Complete"
GROUP BY 1,2,3
ORDER BY total_sales_revenue DESC
LIMIT 10