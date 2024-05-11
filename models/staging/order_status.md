{% docs order_status %}

One of the following values:
| status     | definition                                                                                  |
|------------|---------------------------------------------------------------------------------------------|
| Cancelled  | Order that has been officially voided or revoked before it is fulfilled or shipped          |
| Complete   | Order has been received by the customers                                                    |
| Processing | The order details are reviewed, payment is verified, and the order is prepared for shipment |
| Returned   | Items has been Returned                                                                     |
| Shipped    | Order has been shipped but has not yet been delivered                                       |

{% enddocs %}

{% docs event_type %}

One of the following values:
| event           | definition                                                                                                                                 |
|-----------------|--------------------------------------------------------------------------------------------------------------------------------------------|
| cancel          | The action taken by a customer to cancel an order or a placed transaction                                                                  |
| cart            | Cart events are important for tracking users behavior and understanding the shopping patterns of customers                                 |
| department      | Department events are used to track users interest in different product categories and analyze the performance of various departments      |
| home            | The action taken by a user when they visit the home page of an online store, it provide insights into user traffic patterns                |
| product         | This analyze product performance, identify popular products, and personalize product recommendations to improve the shopping experience    |
| purchase        | This data is valuable for analyzing sales performance, understanding customer buying behavior, and optimizing marketing strategies         |

{% enddocs %}