WITH bill_values AS (
    SELECT 
        bc.bill_id,
        MONTH(bc.bill_date) AS month,
        SUM(i.item_rate * bc.item_quantity) AS bill_amount
    FROM booking_commercials bc
    JOIN items i ON bc.item_id = i.item_id
    WHERE YEAR(bc.bill_date) = 2021
    GROUP BY bc.bill_id, MONTH(bc.bill_date)
)
SELECT *
FROM (
    SELECT *,
           DENSE_RANK() OVER (PARTITION BY month ORDER BY bill_amount DESC) AS rnk
    FROM bill_values
) t
WHERE rnk = 2;