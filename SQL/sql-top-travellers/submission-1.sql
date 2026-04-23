SELECT Name,
CASE
    WHEN SUM(r.distance) IS NOT NULL then SUM(r.distance)
    ELSE 0 
END AS travelled_distance
FROM users u
    LEFT JOIN rides r on r.user_id = u.id
-- WHERE r.distance != 0
GROUP BY Name
ORDER BY travelled_distance DESC