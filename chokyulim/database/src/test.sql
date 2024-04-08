CREATE TABLE theater
(
    theatid INTEGER PRIMARY KEY,
    name TEXT,
    location TEXT
);

CREATE TABLE customer
(
    custid INTEGER PRIMARY KEY,
    name TEXT,
    tel VARCHAR (13)
);

CREATE TABLE reservation
(
    reserid INTEGER PRIMARY KEY,
    theater_id INT,
    customer_id INT,
    date DATE,
    FOREIGN KEY (theater_id) REFERENCES theater (theatid),
    FOREIGN KEY (customer_id) REFERENCES customer (custid)
);

INSERT INTO customer (custid, name, tel)
VALUES (1, '안준영', '010-1234-5678'),
       (2, '김수현', '010-3456-7899'),
       (3, '류현우', '010-4567-8901'),
       (4, '조규림', '010-5678-9012');

INSERT INTO theater (theatid, name, location)
VALUES (1, 'CGV', '역곡역'),
       (2, '롯데시네마', '부천역'),
       (3, '메가박스', '화곡역'),
       (4, 'CGV', '부천역');

INSERT INTO reservation (reserid, theater_id, customer_id, date)
VALUES (1, 4, 3, '2024-04-06'),
       (2, 3, 2, '2024-04-07'),
       (3, 2, 1, '2024-04-13'),
       (4, 1, 4, '2024-02-17'),
       (5, 1, 2, '2024-04-09'),
       (6, 4, 1, '2024-04-10');


SELECT * FROM customer;
SELECT * FROM theater;
SELECT * FROM reservation;


SELECT reservation.theater_id, theater.name
FROM reservation JOIN theater on reservation.theater_id = theater.theatid;

SELECT reservation.customer_id, customer.name, customer.tel
FROM reservation JOIN customer on reservation.customer_id = customer.custid;
