SELECT DISTINCT
    u.id AS user_id,
    CONCAT(u.first_name, ' ', u.last_name) AS userfullname,
    u.email,
    u.age,
    u.gender,
    u.state,
    u.street_address,
    u.postal_code,
    u.city,
    u.country,
    u.latitude AS user_latitude,
    u.longitude AS user_longitude,
    u.traffic_source AS user_traffic_source,
    u.created_at AS user_created_at,
    d.id AS distribution_id,
    d.name AS distribution_name,
    e.id AS event_id,
    e.sequence_number,
    e.session_id,
    e.created_at AS event_created_at,
    e.ip_address,
    e.city AS event_city,
    e.state AS event_state,
    e.postal_code AS event_postal_code,
    e.browser,
    e.traffic_source AS event_traffic_source,
    e.uri,
    e.event_type,
    i.id AS inventory_id,
    i.product_id AS inventory_product_id,
    i.created_at AS inventory_created_at,
    i.cost AS inventory_cost,
    i.product_category,
    i.product_name,
    i.product_brand,
    i.product_retail_price,
    i.product_department,
    i.product_sku,
    oi.id AS order_item_id,
    oi.order_id AS order_item_order_id,
    oi.status AS order_item_status,
    oi.created_at AS order_item_created_at,
    oi.shipped_at AS order_item_shipped_at,
    oi.delivered_at AS order_item_delivered_at,
    oi.returned_at AS order_item_returned_at,
    oi.sale_price,
    o.order_id,
    o.status,
    o.created_at,
    o.num_of_item
FROM {{ ref("stgDistributionCenters") }} d
JOIN {{ ref("stgProducts") }} p on d.id = p.distribution_center_id
JOIN {{ ref("stgInventoryItems") }} i on p.id = i.product_id
JOIN {{ ref("stgOrderItems") }} oi on i.id = oi.inventory_item_id
JOIN {{ ref("stgUsers") }} u on oi.user_id = u.id
JOIN {{ ref("stgOrders") }} o on u.id = o.user_id
JOIN {{ ref("stgEvents") }} e on o.order_id = e.id
GROUP BY
    user_id,
    userfullname,
    u.email,
    u.age,
    u.gender,
    u.state,
    u.street_address,
    u.postal_code,
    u.city,
    u.country,
    u.latitude,
    u.longitude,
    u.traffic_source,
    u.created_at,
    d.id,
    d.name,
    e.id,
    e.sequence_number,
    e.session_id,
    e.created_at,
    e.ip_address,
    e.city,
    e.state,
    e.postal_code,
    e.browser,
    e.traffic_source,
    e.uri,
    e.event_type,
    i.id,
    i.product_id,
    i.created_at,
    i.cost,
    i.product_category,
    i.product_name,
    i.product_brand,
    i.product_retail_price,
    i.product_department,
    i.product_sku,
    oi.id,
    oi.order_id,
    oi.status,
    oi.created_at,
    oi.shipped_at,
    oi.delivered_at,
    oi.returned_at,
    oi.sale_price,
    o.order_id,
    o.status,
    o.created_at,
    o.num_of_item
HAVING COUNT(*) = 1