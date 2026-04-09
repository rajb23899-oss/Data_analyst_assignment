WITH item_orders AS (
    SELECT 
        MONTH(bc.bill_date) AS month,
        bc.item_id,
        SUM(bc.item_quantity) AS total_qty
    FROM booking_commercials bc
    WHERE YEAR(bc.bill_date) = 2021
    GROUP BY MONTH(bc.bill_date), bc.item_id
)
SELECT *
FROM (
    SELECT *,
           RANK() OVER (PARTITION BY month ORDER BY total_qty DESC) AS most_rank,
           RANK() OVER (PARTITION BY month ORDER BY total_qty ASC) AS least_rank
    FROM item_orders
) t
WHERE most_rank = 1 OR least_rank = 1;