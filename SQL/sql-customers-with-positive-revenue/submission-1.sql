-- Write your query below
SELECT customer_id
FROM customers
WHERE 1=1
AND revenue > 0
    AND year = 2020
-- AND customer_id IN (
--     SELECT customer_id 
--     FROM customers
--     WHERE 
-- )