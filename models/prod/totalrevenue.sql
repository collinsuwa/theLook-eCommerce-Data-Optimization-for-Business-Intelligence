with totalrevenue AS(
SELECT  
    oi.sale_price,
    SUM (o.num_of_item) total_amount_purchased,
    (oi.sale_price * SUM (o.num_of_item)) total_sales_revenue
FROM 
    {{ ref("stgOrderItems") }} oi
INNER JOIN 
{{ ref("stgOrders") }} o
ON  oi.order_id = o.order_id
GROUP by 1
ORDER BY total_sales_revenue DESC
)

SELECT
    SUM(total_sales_revenue) total_sales_revenue
FROM
    totalrevenue