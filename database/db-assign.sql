CREATE TABLE `CUSTOMER` (
	`id`	varchar(200)	NOT NULL,
	`name`	varchar(200)	NOT NULL,
	`phone_number`	varchar(200)	NOT NULL
);

CREATE TABLE `BOOK` (
	`ISBN`	int	NOT NULL,
	`genre`	varchar(200)	NOT NULL,
	`name`	varchar(200)	NOT NULL
);

CREATE TABLE `RESERVATION` (
	`reservation_num`	int	NOT NULL,
	`reservation_ISBN`	int	NOT NULL,
	`customer_id`	varchar(200)	NOT NULL,
	`ISBN`	int	NOT NULL,
	`id`	varchar(200)	NOT NULL
);

ALTER TABLE `CUSTOMER` ADD CONSTRAINT `PK_CUSTOMER` PRIMARY KEY (
	`id`
);

ALTER TABLE `BOOK` ADD CONSTRAINT `PK_BOOK` PRIMARY KEY (
	`ISBN`
);

ALTER TABLE `RESERVATION` ADD CONSTRAINT `PK_RESERVATION` PRIMARY KEY (
	`reservation_num`
);

INSERT INTO customer (id, name, phone_number)
VALUES
('eunxeum', '이예은', 01088477426),
('oneda0', '김가온', 01012337463),
('half_kkong', '반유빈', 01022039382),
('wl_rlo_03', '허지은', 01073732626),
('un068', '김희운', 01029382033),
('zeqerq0', '이영현', 01023467283),
('d0.ny_', '김다은', 01029460038),
('ss__m_in_', '우수민', 01020403040);

INSERT INTO book(ISBN, name, genre)
VALUES
(1234, '아몬드','한국소설'),
(5678, '불편한 편의점', '한국소설'),
(1357, '코스모스', '과학'),
(2468, '비전공자도 이해할 수 있는 AI 지식', '과학'),
(9999, '자바 알고리즘 인터뷰', '컴퓨터공학');

INSERT INTO reservation(reservation_num, customer_id, RESERVATION_ISBN )
VALUES
(1, 'eunxeum', 9999),
(2, 'half_kkong', 1234),
(3, 'wl_rlo_03', 1234),
(4, 'un068', 2468),
(5, 'ss__m_in_', 1357),
(6, 'd0.ny_', 1234),
(7, 'zeqerq0', 5678),
(8, 'oneda0', 5678);

SELECT CUSTOMER.name, RESERVATION.reservation_num
FROM CUSTOMER JOIN RESERVATION ON CUSTOMER.id = RESERVATION.customer_id;

SELECT RESERVATION.CUSTOMER_ID, BOOK.NAME
FROM RESERVATION JOIN BOOK ON RESERVATION.RESERVATION_ISBN = BOOK.ISBN;
