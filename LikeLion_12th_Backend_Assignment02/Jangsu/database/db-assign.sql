CREATE TABLE `LibrayID` (
	`StudentID`	int	NOT NULL,
	`UserID`	int	NOT NULL,
	`BookID`	int	NOT NULL,
	`Name`	varchar(5)	NOT NULL	COMMENT '이름',
	`Grade`	varchar(10)	NOT NULL
);

CREATE TABLE `Seat` (
	`UserID`	int	NOT NULL	COMMENT '예약좌석을 신청한 고유번호',
	`Name`	varchar(10)	NOT NULL,
	`InTime`	varchar(8)	NOT NULL,
	`OutTime`	varchar(8)	NOT NULL
);

CREATE TABLE `Book` (
	`BookID`	int	NOT NULL	COMMENT '대출 명단의 고유번호',
	`BookName`	varchar(50)	NULL,
	`NAME`	VARCHAR(5)	NULL,
	`RETURN`	VARCHAR(8)	NULL
);

ALTER TABLE `LibrayID` ADD CONSTRAINT `PK_LIBRAYID` PRIMARY KEY (
	`StudentID`,
	`UserID`,
	`BookID`
);

ALTER TABLE `Seat` ADD CONSTRAINT `PK_SEAT` PRIMARY KEY (
	`UserID`
);

ALTER TABLE `Book` ADD CONSTRAINT `PK_BOOK` PRIMARY KEY (
	`BookID`
);

ALTER TABLE `LibrayID` ADD CONSTRAINT `FK_Seat_TO_LibrayID_1` FOREIGN KEY (
	`UserID`
)
REFERENCES `Seat` (
	`UserID`
);

ALTER TABLE `LibrayID` ADD CONSTRAINT `FK_Book_TO_LibrayID_1` FOREIGN KEY (
	`BookID`
)
REFERENCES `Book` (
	`BookID`
);

