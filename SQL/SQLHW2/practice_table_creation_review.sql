CREATE TABLE review (
    id SERIAL PRIMARY KEY,
    restaurant_id INTEGER,
    user_name VARCHAR(100),
    rating INTEGER,
    review_text TEXT,
    review_date DATE,
    FOREIGN KEY (restaurant_id) REFERENCES restaurant(id) ON DELETE CASCADE
);

