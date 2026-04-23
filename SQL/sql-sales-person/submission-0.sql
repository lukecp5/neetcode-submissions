SELECT name
FROM sales_person sp
WHERE 1=1
AND sp.sales_id NOT IN(
    SELECT sales_id
    FROM orders
    WHERE 1=1
        AND com_id IN (
            SELECT com_id
            FROM company
            WHERE name = 'CRIMSON'
        )
)