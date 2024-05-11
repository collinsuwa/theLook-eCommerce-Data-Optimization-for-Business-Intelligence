{% docs order_status %}

One of the following values:
| status     | definition                                                                                  |
|------------|---------------------------------------------------------------------------------------------|
| Cancelled  | Order that has been officially voided or revoked before it is fulfilled or shipped          |
| Complete   | Order has been received by the users(customers)                                             |
| Processing | The order details are reviewed, payment is verified, and the order is prepared for shipment |
| Returned   | Items has been Returned                                                                     |
| Shipped    | Order has been shipped but has not yet been delivered                                       |

{% enddocs %}