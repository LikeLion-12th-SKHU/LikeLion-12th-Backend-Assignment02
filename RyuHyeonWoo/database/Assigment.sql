CREATE TABLE `card` (
	`cardNumber`	VARCHAR(255)	NOT NULL,
	`cvc`	VARCHAR(255)	NOT NULL,
	`cardType`	VARCHAR(255)	NOT NULL,
	`bankConnect`	VARCHAR(255)	NOT NULL
);

CREATE TABLE `auser` (
	`name`	VARCHAR(255)	NOT NULL,
	`age`	VARCHAR(255)	NOT NULL,
	`accountNumber`	VARCHAR(255)	NOT NULL,
	`cardNumber`	VARCHAR(255)	NOT NULL,
	`id`	VARCHAR(255)	NOT NULL
);

CREATE TABLE `bank` (
	`id`	VARCHAR(255)	NOT NULL,
	`bankNumber`	VARCHAR(255)	NOT NULL,
	`vipGrade`	VARCHAR(255)	NOT NULL,
	`password`	VARCHAR(255)	NOT NULL
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
('KIM312', '1412-6548', 'NARMAL', '5347'),
('LEE124', '1205-5967', 'VIP', '9045'),
('PARK822', '5478-1238', 'VVIP', '1588');

INSERT INTO auser(name, age, accountNumber, cardNumber, id) VALUES
('PARK822', '42', '177473', '1242-43-5436', 'KIM312'),
('PARK822', '38', '138905', '4988-93-2966', 'LEE124'),
('PARK822', '58', '546458', '5461-00-8944', 'PARK822');
