CREATE DATABASE `bt3_db` ;

USE `bt3_db` ;

CREATE TABLE `students` (
`student_id` INT NOT NULL,
`name` VARCHAR(100),
`age` INT,
`major` VARCHAR(100),
PRIMARY KEY (`student_id`)
);

INSERT INTO `students` 
VALUES 
(1, 'Alice', 20,'Computer Science'),
(2, 'Bob', 22, 'Mathematics'),
(3, 'Charlie', 21,'Physics')
;

-- DELETE
DELETE FROM `students`
WHERE (`student_id` = 1)
