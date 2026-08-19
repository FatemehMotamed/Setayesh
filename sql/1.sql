-- create schema `setayesh_books`;
-- show databases;
use setayesh_books;
-- CREATE TABLE `publishers` (
--   `id` INT NOT NULL AUTO_INCREMENT,
--   `name` VARCHAR(45) NULL,
--   `address` VARCHAR(60) NULL,
--   PRIMARY KEY (`id`));
CREATE TABLE `books` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `publisher_id` INT NULL,
  `author_id` INT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `pub_fk`
    FOREIGN KEY (`publisher_id`)
    REFERENCES `publishers` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `auth_id`
    FOREIGN KEY (`author_id`)
    REFERENCES `authors` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE);
