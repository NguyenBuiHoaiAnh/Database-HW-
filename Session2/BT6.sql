-- CREATE DATABASE `bt6_db` ;

-- USE `bt6_db` ;

--  CREATE TABLE `customers` (
--     `customers_id` INT NOT NULL,
--     `name` NVARCHAR(100) NOT NULL,
--     `email` NVARCHAR(100) NOT NULL,
--     `contact` NVARCHAR(15) NOT NULL,
--     PRIMARY KEY (`customers_id`)
--     );

-- CREATE TABLE `orders` (
--     `order_id` INT NOT NULL,
--     `order_date` DATE NOT NULL,
--     `customers_id` INT NOT NULL,
--     PRIMARY KEY (`order_id`),
--     CONSTRAINT `customers_fk`
--  		FOREIGN KEY (`customers_id`)
--  		REFERENCES `customers` (`customers_id`)
--   );
  
-- CREATE TABLE `order_details` (
--     `order_details_id` INT NOT NULL,
--     `product_id` INT NOT NULL,
--     `quantity` INT NOT NULL,
--     `unit_price` INT NOT NULL,
--     `order_id` INT NOT NULL,
--     PRIMARY KEY (`order_details_id`),
--     CONSTRAINT `order_details_fk`
--  		FOREIGN KEY (`order_id`)
--  		REFERENCES `orders` (`order_id`)
-- ); 