-- CREATE DATABASE `products_db` ;

-- USE `products_db` ;

-- CREATE TABLE `product` (
--   `products_id` INT NOT NULL,
--   `product_name` VARCHAR(45) NOT NULL,
--   `price` INT NOT NULL,
--   `stockquatity` INT NOT NULL,
--   PRIMARY KEY (`products_id`)
-- );

-- CREATE TABLE `category` (
--   `category_id` INT NOT NULL,
--   `category_name` VARCHAR(45) NOT NULL,
--   PRIMARY KEY (`category_id`)
--   );
  
-- CREATE TABLE `product_category` (
-- 	`products_id` INT NOT NULL,
-- 	`category_id` INT NOT NULL,
-- CONSTRAINT `pc_product_fk`
-- 	FOREIGN KEY (`products_id`)
-- 	REFERENCES `product` (`products_id`),
-- CONSTRAINT `pc_category_fk`
-- 	FOREIGN KEY (`category_id`)
-- 	REFERENCES `category` (`category_id`)
--     );