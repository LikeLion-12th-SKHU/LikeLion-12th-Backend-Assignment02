CREATE TABLE `student` (
	`student_id`	int	NOT NULL	COMMENT '학생번호',
	`student_name`	varchar	NULL	COMMENT '학생 이름',
	`student_age`	int	NULL	COMMENT '학생나이'
);

CREATE TABLE `studentCourse` (
	`student_id`	int	NOT NULL	COMMENT '학생번호',
	`course_id`	int	NOT NULL	COMMENT '강의번호',
	`grade`	varchar	NULL	COMMENT '성적'
);

CREATE TABLE `class` (
	`course_id`	int	NOT NULL	COMMENT '강의번호',
	`course_name`	varchar(50)	NULL	COMMENT '강의이름',
	`course_description`	char	NULL	COMMENT '강의세부계획'
);

ALTER TABLE `student` ADD CONSTRAINT `PK_STUDENT` PRIMARY KEY (
	`student_id`
);

ALTER TABLE `studentCourse` ADD CONSTRAINT `PK_STUDENTCOURSE` PRIMARY KEY (
	`student_id`,
	`course_id`
);

ALTER TABLE `class` ADD CONSTRAINT `PK_CLASS` PRIMARY KEY (
	`course_id`
);

ALTER TABLE `studentCourse` ADD CONSTRAINT `FK_student_TO_studentCourse_1` FOREIGN KEY (
	`student_id`
)
REFERENCES `student` (
	`student_id`
);

ALTER TABLE `studentCourse` ADD CONSTRAINT `FK_class_TO_studentCourse_1` FOREIGN KEY (
	`course_id`
)
REFERENCES `class` (
	`course_id`
);

INSERT INTO Student (student_id, student_name, student_age)
VALUES
    (1, '이이이', 20),
    (2, '서서서', 22),
    (3, '영영영', 21);


INSERT INTO Course (course_id, course_name, course_description)
VALUES
    (101, '수학', '기초 수학'),
    (102, '과학', '기초 과학'),
    (103, '역사', '세계사');


INSERT INTO StudentCourse (student_id, course_id, grade)
VALUES
    (1, 101, 'A'),
    (1, 102, 'B'),
    (2, 101, 'B'),
    (3, 103, 'A');

SELECT s.student_id, s.student_name, c.course_name, sc.grade
FROM Student s
         JOIN StudentCourse sc ON s.student_id = sc.student_id
         JOIN Course c ON sc.course_id = c.course_id;
