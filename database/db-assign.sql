CREATE TABLE `CUSTOMER` (
	`phone_number`	varchar(200)	NOT NULL,
	`name`	varchar(200)	NOT NULL,
	`id`	varchar(200)	NOT NULL,
	`ISBN`	int	NOT NULL,
	`customer_id`	varchar(200)	NOT NULL
);

CREATE TABLE `BOOK` (
	`ISBN`	int	NOT NULL,
	`name`	varchar(200)	NOT NULL,
	`genre`	varchar(200)	NOT NULL
);

CREATE TABLE `RESERVATION` (
	`customer_id`	varchar(200)	NOT NULL,
	`reservation_ISBN`	int	NOT NULL,
	`reservation_num`	int	NOT NULL
);

ALTER TABLE `CUSTOMER` ADD CONSTRAINT `PK_CUSTOMER` PRIMARY KEY (
	`phone_number`
);

ALTER TABLE `BOOK` ADD CONSTRAINT `PK_BOOK` PRIMARY KEY (
	`ISBN`
);

ALTER TABLE `RESERVATION` ADD CONSTRAINT `PK_RESERVATION` PRIMARY KEY (
	`customer_id`
);

INSERT INTO customer (id, name, phone_number, ISBN )
VALUES
('eunxeum', '이예은', '010-8847-7426', 9999),
('oneda0', '김가온', '010-1233-7463', 5678),
('half_kkong', '반유빈', '010-2203-9382', 1234),
('wl_rlo_03', '허지은', '010-7373-2626', 1234),
('un068', '김희운', '010-2938-2033', 2468),
('zeqerq0', '이영현', '010-2346-7283', 5678),
('d0.ny_', '김다은', '010-2946-0038', 1234),
('ss__m_in_', '우수민', '010-2040-3040', 1357);

INSERT INTO book(name, ISBN, genre)
VALUES
('아몬드', 1234, '한국소설'),
('불편한 편의점', 5678, '한국소설'),
('코스모스', 1357, '과학'),
('비전공자도 이해할 수 있는 AI 지식', 2468, '과학'),
('자바 알고리즘 인터뷰', 9999,'컴퓨터공학');

INSERT INTO reservation(reservation_num, customer_id, RESERVATION_ISBN )
VALUES
(1, 'eunxeum',  9999),
(2, 'half_kkong',  1234),
(3, 'wl_rlo_03', 1234),
(4, 'un068', 2468),
(5, 'ss__m_in_', 1357),
(6, 'd0.ny_', 1234),
(7, 'zeqerq0', 5678),
(8, 'oneda0', 5678);           

SELECT CUSTOMER.name, RESERVATION.reservation_num
FROM CUSTOMER JOIN RESERVATION ON CUSTOMER.id = RESERVATION.customer_id;

SELECT CUSTOMER.id, BOOK.name
FROM CUSTOMER JOIN BOOK ON CUSTOMER.ISBN = BOOK.ISBN;
