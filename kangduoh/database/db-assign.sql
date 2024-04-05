CREATE TABLE `theater` (
	`id`	int	NOT NULL	COMMENT '극장 고유 식별자',
	`name`	varchar(20)	NOT NULL	COMMENT '극장의 이름',
	`location`	varchar(20)	NOT NULL	COMMENT '극장의 위치'
);

CREATE TABLE `reservation` (
	`id`	int	NOT NULL	COMMENT '예약 고유 식별자',
	`seat_number`	varchar(10)	NOT NULL	COMMENT '예약된 좌석번호',
	`date`	date	NOT NULL	COMMENT '예약된 날짜',
	`theater_id`	int	NOT NULL	COMMENT '극장 외래키',
	`customer_id`	int	NOT NULL	COMMENT '고객 외래키'
);

CREATE TABLE `customer` (
	`id`	int	NOT NULL	COMMENT '고객 고유 식별자',
	`name`	varchar(20)	NOT NULL	COMMENT '고객의 이름',
	`address`	varchar(20)	NULL	COMMENT '고객의 주소'
);

ALTER TABLE `theater` ADD CONSTRAINT `PK_THEATER` PRIMARY KEY (
	`id`
);

ALTER TABLE `reservation` ADD CONSTRAINT `PK_RESERVATION` PRIMARY KEY (
	`id`
);

ALTER TABLE `customer` ADD CONSTRAINT `PK_CUSTOMER` PRIMARY KEY (
	`id`
);

INSERT INTO theater (id ,name, location)
     VALUES (1, 'CGV', '서울'),
     (2, '롯데시네마', '인천');

INSERT INTO customer (id, name, address)
     VALUES (1, '김댕댕', '서울'),
     (2, '이달님', '경기'),
     (3, '박삐약', '인천'),
     (4, '최꿀꿀', '서울');

INSERT INTO reservation (id, seat_number, date, theater_id, customer_id)
     VALUES (1, 'A12', '2024-04-05', 1, 4),
     (2, 'C07', '2024-04-05', 2, 1),
     (3, 'E11', '2024-04-07', 1, 2),
     (4, 'G14', '2024-04-08', 2, 3),
     (5, 'B12', '2024-04-09', 2, 4),
     (6, 'A08', '2024-04-11', 1, 3),
     (7, 'B01', '2024-04-11', 1, 4),
     (8, 'G11', '2024-04-14', 1, 2),
     (9, 'E09', '2024-04-15', 1, 1);


SELECT r.id, r.date, t.name AS theater_name, t.location AS theater_loacation, r.seat_number, c.name AS customer_name, c.address AS customer_address
FROM reservation r 
JOIN customer c ON r.customer_id = c.id
JOIN theater t ON r.theater_id = t.id;

