CREATE DATABASE `bt6_db` ;

USE `bt6_db` ;

CREATE TABLE `suppliers` (
    `suppliers_id` INT,
    `suppliers_name` VARCHAR(100) NOT NULL,
    `contact_email` VARCHAR(100) NOT NULL,
    PRIMARY KEY (`suppliers_id`)
);

CREATE TABLE `products` (
	`products_id` INT,
	`products_name` VARCHAR(100) NOT NULL,
    `price` DECIMAL(10,2) NOT NULL,
    `stock` INT NOT NULL,
    
    `suppliers_id` INT,
	PRIMARY KEY (`products_id`),
    
    CONSTRAINT `sp_suppliers_id_fk`
    FOREIGN KEY (`suppliers_id`)
    REFERENCES `suppliers` (`suppliers_id`)
    ON DELETE CASCADE
);

-- Insert

INSERT INTO `suppliers`
VALUES 
(1, 'Alice', 'Alice@gmail'),
(2, 'Bob',  'Bob@gmail'),
(3, 'Charlie', 'Charlie@gmail')
;

INSERT INTO `products`
VALUES 
(1, 'Lemon', 50, 3, 1),
(2, 'Apple',  60, 4, 2),
(3, 'Orange', 40, 5, 3),
(4, 'Phone', 100, 2, 2)
;
DELETE FROM `suppliers` ;

-- UPDATE
UPDATE `products`
SET `price` = 45.99
WHERE (`products_id` = 2) ;

UPDATE `suppliers`
SET `suppliers_name` = 'Tom'
WHERE (`suppliers_id` = 1) ;

-- DELETE
DELETE FROM `suppliers`
WHERE (`suppliers_id` = 3) ;

DELETE FROM `products`
WHERE (`products_id` = 4) ;

-- INSERT
SELECT `products`.`suppliers_id`,
	`products`.`products_name`,
    `suppliers`.`suppliers_id`,
	`suppliers`.`suppliers_name`	
FROM `products`, `suppliers`
WHERE `products`.`suppliers_id` = `suppliers`.`suppliers_id`;

SELECT `suppliers_id` FROM `suppliers` ;