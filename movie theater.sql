CREATE TABLE customers(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    num_tickets INTEGER,
    amount_paid INTEGER,
    movie_date DATE

);
CREATE TABLE tickets(
    ticket_id SERIAL PRIMARY KEY,
    ticket_cost INTEGER NOT NULL,
    FOREIGN KEY(movie_date) REFERENCES customers(movie_date),
    FOREIGN KEY(film_id) REFERENCES movies(film_id),
);
CREATE TABLE movies(
    film_id SERIAL PRIMARY KEY,
    rating VARCHAR(50),
    genre VARCHAR(50),
    languages VARCHAR(50),
    title VARCHAR(100)
);
CREATE TABLE concessions(
    concession_id SERIAL PRIMARY KEY,
    price INTEGER NOT NULL,
    total_purch INTEGER NOT NULL
);
CREATE TABLE inventory(
    item_id SERIAL PRIMARY KEY,
    item_amount INTEGER
);