CREATE TABLE `Products` (
	`productid`	VARCHAR(255)	NOT NULL,
	`name`	TEXT	NULL,
	`price`	VARCHAR(255)	NULL
);

CREATE TABLE `Customer` (
	`custid`	VARCHAR(255)	NOT NULL,
	`name`	TEXT	NULL,
	`address`	TEXT	NULL,
	`phone`	TEXT	NULL
);

CREATE TABLE `Orders` (
	`orderid`	VARCHAR(255)	NOT NULL,
	`orderdate`	DATE	NULL,
	`productid`	VARCHAR(255)	NOT NULL,
	`custid`	VARCHAR(255)	NOT NULL
);

ALTER TABLE `Products` ADD CONSTRAINT `PK_PRODUCTS` PRIMARY KEY (
	`productid`
);

ALTER TABLE `Customer` ADD CONSTRAINT `PK_CUSTOMER` PRIMARY KEY (
	`custid`
);

ALTER TABLE `Orders` ADD CONSTRAINT `PK_ORDERS` PRIMARY KEY (
	`orderid`
);

INSERT INTO customer (custid, name, address, phone)
VALUES (1, ‘이영지’, ‘서울 송파구’, ‘010-1111-1111’),
(2, ‘안유진’, ‘서울 중구’, ‘010-2222-2222’),
(3, ‘미미’, ‘서울 강남구’, ‘010-3333-3333’),
(4, ‘이은지’, ‘서울 마포구’, ‘010-4444-4444’);

INSERT INTO products (productid, name, price)
VALUES (1, ‘스티커’, 2000),
(2, ‘키링’, 3000),
(3, ‘아크릴스텐드’, 5000),
(4, ‘인형’, 10000);

INSERT INTO orders (orderid, productid, custid, orderdate)
VALUES (1, 1, 1, ‘2024-03-05’),
(2, 2, 2, ‘2024-03-18’),
(3, 4, 3, ‘2024-04-05’);

SELECT customer.name, products.name, orders.orderdate
FROM orders
JOIN products ON products.productid = orders.productid
JOIN customer ON customer.custid = orders.custid;