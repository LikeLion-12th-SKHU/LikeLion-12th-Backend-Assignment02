CREATE TABLE `book` (
    `bookNum`	int	NOT NULL,
    `name`	string	NOT NULL,
    `publisher`	string	NOT NULL,
    `price`	int	NOT NULL
);

CREATE TABLE `customer` (
    `id`	int	NOT NULL,
    `name`	string	NOT NULL,
    `ssn`	string	NOT NULL,
    `cellPhone`	string	NOT NULL
);

CREATE TABLE `order` (
     `orderNum`	int	NOT NULL,
     `id`	int	NOT NULL,
     `bookNum`	int	NOT NULL,
     `date`	string	NOT NULL,
    FOREIGN KEY id REFERENCES customer (id),
    FOREIGN KEY bookNum REFERENCES book (bookNum)
);

ALTER TABLE `book` ADD CONSTRAINT `PK_BOOK` PRIMARY KEY (
    `bookNum`
    );

ALTER TABLE `customer` ADD CONSTRAINT `PK_CUSTOMER` PRIMARY KEY (
    `id`
    );

ALTER TABLE `order` ADD CONSTRAINT `PK_ORDER` PRIMARY KEY (
    `orderNum`
    );

INSERT INTO book (bookNum, name, publisher, price)
VALUES (1, '축구의 역사', '굿스포츠', 7000)
    (2, '축구 아는 여자', '나무수', 13000)
    (3, '축구의 이해', '대한미디어', 22000)
    (4, '골프 바이블', '대한미디어', 35000)
    (5, '피겨 교본', '굿스포츠', 8000)

INSERT INTO customer (id, name, ssn, cellPhone)
VALUES (1, '박지성', '810101-1111111', '000-5000-0001')
    (2, '김연아', '900101-2222222', '000-6000-0001')
    (3, '김연경', '880101-3333333', '000-7000-0001')
    (4, '추신수', '820101-4444444', '000-8000-0001')

INSERT INTO order (orderNum, id, bookNum, date)
VALUES (1, 1, 1, '2024-07-01')
    (2, 1, 2, '2024-07-03')
    (3, 2, 5, '2024-07-03')
    (4, 3, 2, '2024-07-04')
    (5, 4, 4, '2024-07-05')
    (6, 1, 3, '2024-07-07')
    (7, 4, 3, '2024-07-07')

SELECT order.*, book.bookNum, customer.*
FROM order
JOIN book ON book.bookNum = order.bookNum
JOIN customer ON order.id = customer.id;

