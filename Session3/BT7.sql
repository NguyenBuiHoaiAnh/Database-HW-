CREATE DATABASE `bt7_db` ;

USE `bt7_db` ;

CREATE TABLE `customers` (
    `customers_id` INT,
    `name` VARCHAR(50) NOT NULL,
    `email` VARCHAR(100) NOT NULL,
    `join_date` DATE,
    PRIMARY KEY (`customers_id`)
);

CREATE TABLE `orders` (
	`orders_id` INT NOT NULL,
	`order_date` DATETIME,
    `total_amount` DECIMAL(10,2) NOT NULL,
    
    `customers_id` INT,
	PRIMARY KEY (`orders_id`),
    
    CONSTRAINT `co_customers_id_fk`
    FOREIGN KEY (`customers_id`)
    REFERENCES `customers` (`customers_id`)
    ON DELETE CASCADE
);

-- Insert

INSERT INTO `customers`
VALUES 
(1, 'Alice', 'Alice@gmail', '2025-06-11'),
(2, 'Bob',  'Bob@gmail', '2024-07-11'),
(3, 'Helen', 'Helen@gmail', '2024-11-16'),
(4, 'Charlie', 'Charlie@gmail', '2024-02-17')
;

INSERT INTO `orders`
VALUES 
(1, '2024-07-11 15:20:00', 30, 1),
(2, '2024-08-11 10:00:20', 40, 2),
(3, '2024-09-11 07:20:10', 50, 3),
(4, '2024-10-11 16:30:40', 20, 4),
(5, '2024-10-11 15:50:20', 30, 1)
;
-- DELETE FROM `orders` ;

-- UPDATE
UPDATE `orders`
SET `total_amount` = 350.00
WHERE (`orders_id` = 3) ;

UPDATE `customers`
SET `email` = 'Tom@gmail'
WHERE (`customers_id` = 2) ;

-- DELETE
DELETE FROM `customers`
WHERE (`customers_id` = 4) ;

DELETE FROM `orders`
WHERE (`orders_id` = 1) ;

-- INSERT ???
SELECT * FROM `orders` ;
SELECT `name` FROM `customers` ;

SELECT `customers_id`,`total_amount` 
FROM `orders` 
ORDER BY `customers_id` ASC,
`total_amount` ASC ;