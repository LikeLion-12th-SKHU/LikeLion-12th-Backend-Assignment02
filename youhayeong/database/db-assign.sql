CREATE TABLE `student` (
	`id`	int	NOT NULL	COMMENT '기본키',
	`name`	varchar(30)	NOT NULL,
	`departmentName`	varchar(50)	NOT NULL,
	`sex`	varchar(30)	NOT NULL,
	`age`	int	NOT NULL
);

INSERT INTO student (id, name, departmentName, sex, age)
VALUES (202214033, '유하영', 'it융합자율학부', '여', 23),
(202314034, '박연지', '미디어융합자율학부', '여', 22),
(201814035, '지정욱', '인문융합자율학부', '남', 26),
(202414036, '이승현', '소프트웨어융합학부', '남', 20);

CREATE TABLE `department` (
	`departmentName`	varchar(50)	NOT NULL	COMMENT '기본키',
	`departmentId`	int	NOT NULL,
	`phone`	varchar(60)	NOT NULL
);

INSERT INTO department(departmentId, departmentName, phone)
VALUES (1, 'it융합자율학부', '02-2610-4114'),
(2, '미디어융합자율학부', '02-2610-4115'),
(3, '사회융합자율학부', '02-2610-4116'),
(4, '인문융합자율학부', '02-2610-4117'),
(5, '소프트웨어융합학부', '02-2610-4118');


CREATE TABLE `sugang` (
	`lectureName`	varchar(70)	NOT NULL	COMMENT '기본키',
	`id`	int	NOT NULL	COMMENT 'a 테이블 기본키 참조 외래키',
	`departmentName`	varchar(50)	NOT NULL	COMMENT 'b 테이블 기본키 참조 외래키'
);

INSERT INTO sugang (lectureName, id, departmentName)
VALUES ('리눅스 시스템', 202214033, 'it융합자율학부'),
('데이터베이스', 202314034, 'it융합자율학부'),
('백엔드 프레임워크', 201814035, 'it융합자율학부'),
('C프로그래밍', 202414036, '소프트웨어융합학부');

ALTER TABLE `student` ADD CONSTRAINT `PK_STUDENT` PRIMARY KEY (
	`id`
);

ALTER TABLE `department` ADD CONSTRAINT `PK_DEPARTMENT` PRIMARY KEY (
	`departmentName`
);

ALTER TABLE `sugang` ADD CONSTRAINT `PK_SUGANG` PRIMARY KEY (
	`lectureName`
);

SELECT sg.*, d.departmentId, st.name, st.sex, st.age
FROM sugang sg INNER JOIN student st ON sg.id = st.id
INNER JOIN department d ON st.departmentName = d.departmentName;