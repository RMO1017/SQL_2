INSERT INTO customers(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    num_tickets INTEGER,
    amount_paid INTEGER,
    movie_date DATE
)VALUES(
    1,
    'Sawyer',
    'James',
    2,
    14,
    2022-12-12
);

INSERT INTO tickets(
    ticket_id SERIAL PRIMARY KEY,
    ticket_cost INTEGER NOT NULL,
    FOREIGN KEY(movie_date) REFERENCES customers(movie_date),
    FOREIGN KEY(film_id) REFERENCES movies(film_id),
)VALUES(
    1,
    7,
    2022-12-12,
    3
);
INSERT INTO movies(
    film_id SERIAL PRIMARY KEY,
    rating VARCHAR(50),
    genre VARCHAR(50),
    languages VARCHAR(50),
    title VARCHAR(100)
)VALUES (
    3,
    'PG',
    'Action',
    'English',
    'The Yellow Brick Road'
);
INSERT INTO concessions(
    concession_id SERIAL PRIMARY KEY,
    price INTEGER NOT NULL,
    total_purch INTEGER NOT NULL
)VALUES(
    2,
    3,
    2
);
INSERT INTO inventory(
    item_id SERIAL PRIMARY KEY,
    item_amount INTEGER
)VALUES(
    4,
    222
);
