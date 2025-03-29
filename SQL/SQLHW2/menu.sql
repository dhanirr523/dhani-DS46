CREATE TABLE menu (
    id SERIAL PRIMARY KEY,
    restaurant_id INTEGER,
    item_name VARCHAR(100),
    item_description TEXT,
    price NUMERIC(10,2),
    FOREIGN KEY (restaurant_id) REFERENCES restaurant(id) ON DELETE CASCADE
);
