CREATE DATABASE `bt2_db` ;

USE `bt2_db` ;

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

-- UPDATE
UPDATE `students` 
SET `age` = '23'
WHERE (`student_id` = 2);