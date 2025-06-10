-- CREATE DATABASE `bt5_db` ;

USE `bt5_db` ;

-- CREATE TABLE `products` (
--    `product_id` INT NOT NULL,
--    `product_name` NVARCHAR(100) NOT NULL,
--    `catodory` NVARCHAR(100) NOT NULL,
--    `price` DECIMAL(10,2),
--    `stockquatity` INT NOT NULL,
--    PRIMARY KEY (`product_id`)
--  );

-- CREATE TABLE `orders` (
--     `order_id` INT NOT NULL,
--     `order_date` DATE NOT NULL,
--     `quantity` INT NOT NULL,
--     `totalamount` DECIMAL(10,2) NOT NULL,
--     `product_id` INT NOT NULL,
--     PRIMARY KEY (`order_id`),
--     CONSTRAINT `product_fk`
--  		FOREIGN KEY (`product_id`)
--  		REFERENCES `products` (`product_id`)
--   );