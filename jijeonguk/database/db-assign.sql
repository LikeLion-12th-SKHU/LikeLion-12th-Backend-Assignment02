CREATE TABLE `customer` (
	`id`	int	NOT NULL,
	`password`	varchar(20)	NOT NULL,
	`nickname`	varchar(20)	NOT NULL,
	`currentAddress`	varchar(100)	NULL
);

CREATE TABLE `stores` (
	`id`	int	NOT NULL,
	`name`	varchar(20)	NOT NULL,
	`category`	varchar(20)	NOT NULL,
	`address`	varchar(50)	NOT NULL
);

CREATE TABLE `orders` (
	`id`	int	NOT NULL,
	`customer_id`	int	NOT NULL	COMMENT 'customer 외래키',
	`store_id`	int	NOT NULL	COMMENT 'stores 외래키',
	`paymentMethod`	varchar(100)	NOT NULL,
	`deliverAddress`	varchar(100)	NOT NULL
);


ALTER TABLE `customer` ADD CONSTRAINT `PK_CUSTOMER` PRIMARY KEY (
	`id`
);

ALTER TABLE `stores` ADD CONSTRAINT `PK_STORES` PRIMARY KEY (
	`id`
);

ALTER TABLE `orders` ADD CONSTRAINT `PK_ORDERS` PRIMARY KEY (
	`id`
);

ALTER TABLE `orders` ADD CONSTRAINT `FK_customer_TO_orders_1` FOREIGN KEY (
	`customer_id`
)
REFERENCES `customer` (
	`id`
);

ALTER TABLE `orders` ADD CONSTRAINT `FK_stores_TO_orders_1` FOREIGN KEY (
	`store_id`
)
REFERENCES `stores` (
	`id`
);


INSERT INTO customer (id, password, nickname, currentAddress)
VALUES (1, 'aaa1', '너무', '서울'),
	(2, 'aaa2', '배고픈', '서울'),
	(3, 'aaa3', '사람', '서울'),
	(4, 'aaa4', '어디', '서울'),
	(5, 'aaa5', '있나요', '서울');


INSERT INTO stores (id, name, category, address)
VALUES (1, '짜장면맛집', '중식', '서울'),
	(2, '짬뽕맛집', '중식', '서울'),
	(3, '초밥맛집', '일식', '서울');

INSERT INTO orders (id, customer_id, store_id, paymentMethod, deliverAddress)
	VALUES(1, 1, 1, '카카오페이', '서울 어딘가'),
	(2, 2, 3, '토스페이', '서울 어딘가'),
	(3, 2, 2, '카카오페이', '서울 어딘가'),
	(4, 3, 1, '토스페이', '서울 어딘가'),
	(5, 5, 2, '기업은행', '서울 어딘가');

SELECT o.id as order_id, c.nickname as nickname, s.id as store_id, c.id as customer_id, s.name as store_name, o.paymentMethod
FROM orders o
JOIN customer c ON o.customer_id = c.id
JOIN stores s ON o.store_id = s.id;