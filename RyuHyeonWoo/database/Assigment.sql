CREATE TABLE `card` (
	`cardNumber`	VARCHAR(255)	NOT NULL,
	`cvc`	VARCHAR(255)	NOT NULL,
	`cardType`	VARCHAR(255)	NOT NULL,
	`bankConnect`	VARCHAR(255)	NOT NULL
);

CREATE TABLE `bank` (
	`id`	VARCHAR(255)	NOT NULL,
	`bankNumber`	VARCHAR(255)	NOT NULL,
	`vipGrade`	VARCHAR(255)	NOT NULL,
	`password`	VARCHAR(255)	NOT NULL
);

CREATE TABLE `auser` (
	`id`	VARCHAR(255)	NOT NULL,
	`cardNumber`	VARCHAR(255)	NOT NULL,
	`name`	VARCHAR(255)	NOT NULL,
	`age`	int	NOT NULL,
	`accountNumber`	VARCHAR(255)	NOT NULL,
	FOREIGN KEY (`cardNumber`) REFERENCES `card`(`cardNumber`),
	FOREIGN KEY (`id`) REFERENCES `bank`(`id`)
);

ALTER TABLE `card` ADD CONSTRAINT `PK_CARD` PRIMARY KEY (
	`cardNumber`
);

ALTER TABLE `bank` ADD CONSTRAINT `PK_BANK` PRIMARY KEY (
	`id`
);

INSERT INTO card(cardNumber, cvc, cardType, bankConnect) VALUES
('1242-43-5436', '213', 'CHECK', 'KBSTAR'),
('4988-93-2966', '052', 'CHECK', 'SHINHAN'),
('5461-00-8944', '567', 'CREDIT', 'KBSTAR');

INSERT INTO bank(id, bankNumber, vipGrade, password) VALUES
('KIM312', '1412-6548', 'NORMAL', '5347'),
('LEE124', '1205-5967', 'VIP', '9045'),
('PARK822', '5478-1238', 'VVIP', '1588');

INSERT INTO auser(name, age, accountNumber, cardNumber, id) VALUES
('PARKGILDONG', '42', '177473', '1242-43-5436', 'KIM312'),
('KIMSEONGJAE', '38', '138905', '4988-93-2966', 'LEE124'),
('LEEDAEYUNG', '58', '546458', '5461-00-8944', 'PARK822');

select * from bank;
select * from card;
select * from auser;