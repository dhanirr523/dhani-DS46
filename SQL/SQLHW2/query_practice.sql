SELECT r.name, r.street_address, m.item_name, m.item_description, m.price, AVG(rev.rating) AS average_rating
FROM restaurant r
LEFT JOIN menu m ON r.id = m.restaurant_id
LEFT JOIN review rev ON r.id = rev.restaurant_id
GROUP BY r.id, m.id;



