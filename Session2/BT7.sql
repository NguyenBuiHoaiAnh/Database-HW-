CREATE DATABASE `bt7_db` ;

USE `bt7_db` ;

 CREATE TABLE `sales` (
    `sale_id` INT NOT NULL,
    `sale_date` DATE NOT NULL,
    `customers_id` INT NOT NULL,
    `totalamount` DECIMAL (10,2) NOT NULL,
    PRIMARY KEY (`sale_id`)
    );

CREATE TABLE `products` (
   `product_id` INT NOT NULL,
   `product_name` NVARCHAR(255) NOT NULL,
   `catodory` NVARCHAR(255) NOT NULL,
   `price` DECIMAL(10,2) NOT NULL,
   PRIMARY KEY (`product_id`)
 );
  
CREATE TABLE `sale_details` (
    `sale_details_id` INT NOT NULL,
    `quantity` INT NOT NULL,
    `unit_price` DECIMAL(10,2) NOT NULL,
    `sale_id` INT NOT NULL,
    `product_id` INT NOT NULL,
    PRIMARY KEY (`sale_details_id`),
    CONSTRAINT `sale_id`
 		FOREIGN KEY (`sale_id`)
 		REFERENCES `sales` (`sale_id`),
	CONSTRAINT `product_id`
 		FOREIGN KEY (`product_id`)
 		REFERENCES `products` (`product_id`)
); 