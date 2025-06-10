-- CREATE DATABASE `bt9_db` ;

USE `bt9_db` ;

 CREATE TABLE `users` (
    `user_id` INT NOT NULL,
    `username` NVARCHAR(100) NOT NULL,
    `password_hash` NVARCHAR(100) NOT NULL,
    `email` NVARCHAR(100) NOT NULL,
    `created_at` DATETIME NOT NULL,
    PRIMARY KEY (`user_id`)
    );

CREATE TABLE `orders` (
    `order_id` INT NOT NULL,
    `order_date` DATETIME NOT NULL,
    `totalamount` DATETIME NOT NULL,
    
    `user_id` INT NOT NULL,
    PRIMARY KEY (`order_id`),
    CONSTRAINT `order_user_fk`
 		FOREIGN KEY (`user_id`)
 		REFERENCES `users` (`user_id`)
  );

  CREATE TABLE `products` (
   `product_id` INT NOT NULL,
   `product_name` VARCHAR(100) NOT NULL,
   `description` TEXT NOT NULL,
   `price` DECIMAL(10,2) NOT NULL,
   `stock` INT NOT NULL,
   PRIMARY KEY (`product_id`)
 );
 
  CREATE TABLE `reviews` (
    `review_id` INT NOT NULL,
    `rating` INT NOT NULL,
    `review_text` TEXT NOT NULL,
    `created_at` DATETIME NOT NULL,
    
    `product_id` INT NOT NULL,
    `user_id` INT NOT NULL,
    PRIMARY KEY (`review_id`),
    CONSTRAINT `reviews_user_fk`
 		FOREIGN KEY (`user_id`)
 		REFERENCES `users` (`user_id`),
	CONSTRAINT `reviews_products_fk`
 		FOREIGN KEY (`product_id`)
 		REFERENCES `products` (`product_id`)
  );

 
CREATE TABLE `order_details` (
    `order_details_id` INT NOT NULL,
    `quantity` INT NOT NULL,
    `price_at_order` DECIMAL(10,2) NOT NULL,
    
    `product_id` INT NOT NULL,
    `order_id` INT NOT NULL,
    PRIMARY KEY (`order_details_id`),
    CONSTRAINT `od_order_fk`
 		FOREIGN KEY (`order_id`)
 		REFERENCES `orders` (`order_id`),
	CONSTRAINT `od_product_fk`
 		FOREIGN KEY (`product_id`)
 		REFERENCES `products` (`product_id`)
); 