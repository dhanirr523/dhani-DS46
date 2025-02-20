SELECT 
    r.id, 
    r.name, 
    avg_rev.avg_rating,
    STRING_AGG(m.item_name, ', ') AS menu_items
FROM restaurant AS r
INNER JOIN (
    SELECT restaurant_id, ROUND(AVG(rating), 2) AS avg_rating
    FROM review
    GROUP BY restaurant_id
) AS avg_rev ON r.id = avg_rev.restaurant_id
INNER JOIN menu AS m ON r.id = m.restaurant_id
GROUP BY r.id, r.name, avg_rev.avg_rating;

