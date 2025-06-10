-- CREATE DATABASE `bt4_db` ;

USE `bt4_db` ;

-- CREATE TABLE `customers` (
--    `customers_id` INT NOT NULL,
--    `name` VARCHAR(45) NOT NULL,
--    `address` VARCHAR(45) NOT NULL,
--    `contact` INT NOT NULL,
--    PRIMARY KEY (`customers_id`)
--    );

-- CREATE TABLE `orders` (
--    `order_id` INT NOT NULL,
--    `order_date` DATE NOT NULL,
--    `totalamount` INT NOT NULL,
--    `customers_id` INT NOT NULL,
--    PRIMARY KEY (`order_id`),
--    CONSTRAINT `customers_fk`
-- 		FOREIGN KEY (`customers_id`)
-- 		REFERENCES `customers` (`customers_id`)
--  );