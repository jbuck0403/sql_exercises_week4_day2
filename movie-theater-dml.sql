INSERT INTO movies(
    title,
    rating,
    runtime,
    movie_description
) VALUES (
    'Casablanca',
    'PG',
    102,
    'A timeless classic set against the backdrop of World War II, Casablanca follows the complex love story between a cynical nightclub owner and a former lover, all while political tensions rise in Morocco.'
), (
    'E.T. the Extra-Terrestrial',
    'PG',
    115,
    'Steven Spielbergs heartwarming tale of a young boy who befriends a stranded alien and embarks on a mission to help him return home to his own planet.'
), (
    'The Matrix',
    'R',
    136,
    'In a dystopian future, The Matrix explores the story of a computer hacker who discovers that the reality he knows is a simulation controlled by machines, leading to a mind-bending journey to free humanity.'
), (
    'Inception',
    'PG-13',
    148,
    'Directed by Christopher Nolan, Inception is a mind-bending science fiction thriller that explores the world of dreams and corporate espionage as a group of thieves enters the subconscious of their targets to steal valuable information.'
);

INSERT INTO customers(
    first_name,
    last_name
) VALUES (
    'Johnny',
    'Bravo'
), (
    'Tony',
    'Danza'
) , (
    'Barack',
    'Obama'
);

INSERT INTO tickets(
    movie_id,
    ticket_price,
    customer_id
) VALUES (
    1,
    10.99,
    1
), (
    2,
    10.99,
    2
), (
    3,
    10.99,
    3
);

INSERT INTO concessions(concession_name,
                        concession_description,
                        concession_price
) VALUES (
    'Nachos',
    'Stale chips with old, melted down tires colored orange',
    15.99
), (
    'Coke',
    'Carbonated water sweetened artificially with pig fattener',
    3.99
), (
    'Reeses Pieces',
    'Just an all around good snack',
    8.99
);

INSERT INTO concessions_transaction(customer_id
) VALUES (
    1
);

INSERT INTO concessions_receipt(transaction_id,
                                concession_id
) VALUES (
    1,
    1
), (
    1,
    2
);
