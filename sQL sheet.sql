-- Customer table
CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	address VARCHAR(100),
	billing_info VARCHAR(100)
);

-- Concession table
CREATE TABLE concession(
	item_id SERIAL PRIMARY KEY,
	amount NUMERIC(5,2),
	product_name VARCHAR(100)
);

-- Movie table
CREATE TABLE movie(
	movie_id SERIAL PRIMARY KEY,
	movie_name VARCHAR(100)
);

-- Ticket table
CREATE TABLE ticket(
	ticket_id SERIAL PRIMARY KEY,
	ticket_date DATE,
	ticket_total NUMERIC(10,2),
	customer_id INTEGER NOT NULL,
	movie_id SERIAL NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY(movie_id) REFERENCES movie(movie_id)
);
INSERT INTO customer(
	first_name,
	last_name,
	address,
	billing_info
)
VALUES(
	'Bob',
	'Smith',
	'222 Circle Dr',
	'222 Circle Dr Chicago, IL 60632'
);

SELECT *
FROM customer;

INSERT INTO customer(
	first_name,
	last_name,
	address,
	billing_info
)
VALUES(
	'Zander',
	'Langley',
	'223 Circle Dr',
	'223 Circle Dr Chicago, IL 60632'
);
INSERT INTO ticket(
	ticket_id,
	ticket_date,
	ticket_total,
	customer_id,
	movie_id
)
VALUES(
	1,
	'09/11/2001',
	5,
	2,
	1
);

INSERT INTO concession(
	amount,
	product_name
)
VALUES(
	5.00,
	'chips'
);


INSERT INTO movie(
	movie_name
)
VALUES(
	'I hate movies'
);