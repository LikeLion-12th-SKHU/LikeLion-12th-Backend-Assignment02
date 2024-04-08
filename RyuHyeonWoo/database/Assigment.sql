CREATE TABLE `card` (
	`cardNumber`	String	NOT NULL,
	`cvc`	VARCHAR(255)	NULL,
	`cardType`	VARCHAR(255)	NULL,
	`bankConnect`	VARCHAR(255)	NULL
);

CREATE TABLE `user` (
	`id`	String	NOT NULL,
	`cardNumber`	String	NOT NULL,
	`name`	VARCHAR(255)	NULL,
	`bank`	VARCHAR(255)	NULL,
	`accountNumber`	VARCHAR(255)	NULL
);

CREATE TABLE `bank` (
	`id`	String	NOT NULL,
	`age`	VARCHAR(255)	NULL,
	`vipGrade`	VARCHAR(255)	NULL,
	`password`	VARCHAR(255)	NULL
);

ALTER TABLE `card` ADD CONSTRAINT `PK_CARD` PRIMARY KEY (
	`cardNumber`
);

ALTER TABLE `user` ADD CONSTRAINT `PK_USER` PRIMARY KEY (
	`id`,
	`cardNumber`
);

ALTER TABLE `bank` ADD CONSTRAINT `PK_BANK` PRIMARY KEY (
	`id`
);

ALTER TABLE `user` ADD CONSTRAINT `FK_bank_TO_user_1` FOREIGN KEY (
	`id`
)
REFERENCES `bank` (
	`id`
);

ALTER TABLE `user` ADD CONSTRAINT `FK_card_TO_user_1` FOREIGN KEY (
	`cardNumber`
)
REFERENCES `card` (
	`cardNumber`
);

INSERT TABLE card(cardNumber, cvc, cardType, bankConnect) VALUES
('1242-43-5436', '213', 'CHECK', 'KBSTAR')

INSERT TABLE card(cardNumber, cvc, cardType, bankConnect) VALUES
('4988-93-2966', '052', 'CHECK', 'SHINHAN')

INSERT TABLE card(cardNumber, cvc, cardType, bankConnect) VALUES
('5461-00-8944', '567', 'CREDIT', 'KBSTER')

INSERT TABLE bank(id, bankBook, vipGrade, password) VALUES
('KIM312', '1412-6548', 'NARMAL', '5347')

INSERT TABLE bank(id, bankBook, vipGrade, password) VALUES
('LEE124', '1205-5967', 'VIP', '9045')

INSERT TABLE bank(id, bankBook, vipGrade, password) VALUES
('PARK822', '5478-1238', 'VVIP', '1588')

INSERT TABLE user(name, , age, accountNumber) VALUES
('PARK822', '42', '177473')

INSERT TABLE user(name, age, vipGrade, accountNumber) VALUES
('PARK822', '38', '138905')

INSERT TABLE user(name, age, vipGrade, accountNumber) VALUES
('PARK822', '58', '546458')



