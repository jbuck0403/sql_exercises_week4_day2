CREATE TABLE customers(customer_id SERIAL PRIMARY KEY,
                       first_name VARCHAR,
                       last_name VARCHAR
                       );

CREATE TABLE movies(movie_id SERIAL PRIMARY KEY,
                    title VARCHAR,
                    rating VARCHAR,
                    runtime INTEGER,
                    movie_description TEXT
                    );

CREATE TABLE tickets(ticket_id SERIAL PRIMARY KEY,
                     movie_id INTEGER,
                     ticket_price DECIMAL(4,2),
                     customer_id INTEGER,
                     FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
                     FOREIGN KEY (movie_id) REFERENCES movies(movie_id)
                     );

CREATE TABLE concessions(concession_id SERIAL PRIMARY KEY,
                         concession_name VARCHAR,
                         concession_description TEXT,
                         concession_price DECIMAL(4,2)
                         );

CREATE TABLE concessions_transaction(transaction_id SERIAL PRIMARY KEY,
                                     customer_id INTEGER,
                                     FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
                                     );

CREATE TABLE concessions_receipt(transaction_id INTEGER,
                                 concession_id INTEGER,
                                 FOREIGN KEY (transaction_id) REFERENCES concessions_transaction(transaction_id),
                                 FOREIGN KEY (concession_id) REFERENCES concessions(concession_id)
                                 );