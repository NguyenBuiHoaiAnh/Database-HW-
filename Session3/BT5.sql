CREATE DATABASE `bt5_db` ;

USE `bt5_db` ;

CREATE TABLE `students` (
    `student_id` INT,
    `student_name` VARCHAR(50) NOT NULL,
    `major` VARCHAR(50) NOT NULL,
    PRIMARY KEY (`student_id`)
);

CREATE TABLE `courses` (
	`courses_id` INT,
	`courses_name` VARCHAR(100) NOT NULL,
	`instructor` VARCHAR(50) NOT NULL,
	PRIMARY KEY (`courses_id`)
);

INSERT INTO `students`
VALUES 
(1, 'Alice', 'Computer Science'),
(2, 'Bob',  'Mathematics'),
(3, 'Charlie', 'Physics'),
(4, 'Phoenix', 'Literature')
;

INSERT INTO `courses`
VALUES 
(1, 'Computer Science', 'Peter'),
(2, 'Mathematics',  'Quill'),
(3, 'Physics', 'Gideon')
;

-- UPDATE
UPDATE `courses`
SET `courses_name` = 'Advanced Mathematics'
WHERE (`courses_id` = 2) ;

UPDATE `courses`
SET `courses_name` = 'Engineering'
WHERE (`courses_id` = 3) ;

-- DELETE
DELETE FROM `courses`
WHERE (`courses_id` = 3) ;

DELETE FROM `students`
WHERE (`student_id` = 1) ;

-- INSERT
SELECT * FROM `courses` ;

SELECT * FROM `students` ;