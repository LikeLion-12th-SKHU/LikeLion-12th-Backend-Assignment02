CREATE TABLE customer
(
    cust_id INTEGER PRIMARY KEY,
    cust_name TEXT,
    cust_tel  VARCHAR(13),
    cust_address VARCHAR(80)
);


CREATE TABLE goods
(
    goods_id INTEGER PRIMARY KEY,
    goods_name TEXT,
    goods_price int
);


CREATE TABLE sale
(
    sale_id INTEGER PRIMARY KEY,
    goods_id int,
    cust_id int,
    date DATE,
    FOREIGN KEY (cust_id) REFERENCES customer  (cust_id),
    FOREIGN KEY (goods_id) REFERENCES goods  (goods_id)
);


INSERT INTO customer (cust_id, cust_name, cust_tel, cust_address)
VALUES (1, '조서윤', '010-1234-1234', '인천'),
       (2, '가나다', '010-5678-5678', '서울'),
       (3, '라마바', '010-1111-2222', '제주'),
       (4, '사아자', '010-3333-4444', '강원');


INSERT INTO goods (goods_id, goods_name, goods_price)
VALUES (1234, '딸기', 12800),
       (5678, '오렌지', 15900),
       (9999, '빈츠', 4490),
       (8888, '소금빵', 2000),
       (7777, '삼겹살', 22000),
       (6666, '새우깡', 1400);



INSERT INTO sale (sale_id, goods_id, cust_id, date)
VALUES (1, 1234, 1, '2024-04-07')
    (2, 5678, 1, '2024-04-07'),
(3, 9999, 2, '2024-04-07'),
(4, 8888, 2, '2024-04-06'),
(5, 7777, 3, '2024-04-05'),
(6, 9999, 3, '2024-04-04'),
(7, 6666, 4, '2024-04-03');

SELECT A.SALE_ID, A.DATE
     , B.GOODS_NAME, B.GOODS_PRICE
     , C.CUST_NAME, C.CUST_TEL, C.CUST_ADDRESS
FROM SALE A
         JOIN GOODS B ON A.GOODS_ID = B.GOODS_ID
         JOIN CUSTOMER C ON A.CUST_ID = C.CUST_ID