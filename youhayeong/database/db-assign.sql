CREATE TABLE `student` (
	`studentId`	int	NOT NULL	COMMENT '기본키',
	`name`	varchar(30)	NOT NULL,
	`departmentName`	varchar(50)	NOT NULL,
	`sex`	varchar(30)	NOT NULL,
	`age`	int	NOT NULL
);

INSERT INTO student (studentId, name, departmentName, sex, age)
VALUES (202214033, '유하영', 'it융합자율학부', '여', 23),
(202314034, '박연지', '미디어융합자율학부', '여', 22),
(201814035, '지정욱', '인문융합자율학부', '남', 26),
(202414036, '이승현', '소프트웨어융합학부', '남', 20);

CREATE TABLE `department` (
	`departmentId`	int	NOT NULL	COMMENT '기본키',
	`departmentName`	varchar(50)	NOT NULL,
	`phone`	varchar(60)	NOT NULL
);

INSERT INTO department(departmentId, departmentName, phone)
VALUES (1, 'it융합자율학부', '02-2610-4114'),
(2, '미디어융합자율학부', '02-2610-4115'),
(3, '사회융합자율학부', '02-2610-4116'),
(4, '인문융합자율학부', '02-2610-4117'),
(5, '소프트웨어융합학부', '02-2610-4118');

CREATE TABLE `sugang_subject` (
	`lectureId`	varchar(50)	NOT NULL	COMMENT '기본키',
	`lectureName`	varchar(70)	NOT NULL,
	`studentId`	int	NOT NULL	COMMENT 'a 테이블 참조 외래키',
	`departmentId`	int	NOT NULL	COMMENT 'b 테이블 참조 외래키',
	FOREIGN KEY studentId REFERENCES student (studentId),
	FOREIGN KEY departmentId REFERENCES department (departmentId)
);

INSERT INTO sugang_subject (lectureId, lectureName, studentId, departmentId)
VALUES ('XB001', '리눅스 시스템', 202214033, '1'),
('XB003', '데이터베이스', 202314034, '2'),
('XB005', '백엔드 프레임워크', 201814035, '4'),
('XB007', 'C프로그래밍', 202414036, '5');

ALTER TABLE `student` ADD CONSTRAINT `PK_STUDENT` PRIMARY KEY (
	`studentId`
);

ALTER TABLE `department` ADD CONSTRAINT `PK_DEPARTMENT` PRIMARY KEY (
	`departmentId`
);

ALTER TABLE `sugang_subject` ADD CONSTRAINT `PK_SUGANG_SUBJECT` PRIMARY KEY (
	`lectureId`
);

SELECT ss.*, d.departmentId, st.name, st.sex, st.age
FROM sugang_subject ss JOIN student st ON ss.studentId = st.studentId
JOIN department d ON ss.departmentId = d.departmentId;
