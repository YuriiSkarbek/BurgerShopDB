-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema korova
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema korova
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `korova` DEFAULT CHARACTER SET utf8 ;
USE `korova` ;

-- -----------------------------------------------------
-- Table `korova`.`address`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `korova`.`address` (
  `address_id` INT(10) NOT NULL AUTO_INCREMENT,
  `address_street` VARCHAR(255) NULL DEFAULT NULL,
  `address_house` VARCHAR(50) NULL DEFAULT NULL,
  `address_other` TEXT NULL DEFAULT NULL,
  PRIMARY KEY (`address_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `korova`.`category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `korova`.`category` (
  `category_id` INT(10) NOT NULL AUTO_INCREMENT,
  `category_name` VARCHAR(50) NOT NULL,
  `category_name_eng` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`category_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 7
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `korova`.`orders`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `korova`.`orders` (
  `orders_id` INT(10) NOT NULL AUTO_INCREMENT,
  `orders_time` DATETIME NULL DEFAULT NULL,
  `orders_users_id` INT(10) NULL DEFAULT NULL,
  `orders_products_id` INT(10) NULL DEFAULT NULL,
  PRIMARY KEY (`orders_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `korova`.`product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `korova`.`product` (
  `product_id` INT(10) NOT NULL AUTO_INCREMENT,
  `product_name` VARCHAR(255) NOT NULL,
  `product_description` VARCHAR(255) NOT NULL,
  `product_photo` TEXT NULL DEFAULT NULL,
  `product_price` INT(5) NULL DEFAULT NULL,
  `product_category_id` INT(10) NULL DEFAULT NULL,
  PRIMARY KEY (`product_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 20
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `korova`.`users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `korova`.`users` (
  `users_id` INT(10) NOT NULL AUTO_INCREMENT,
  `users_name` VARCHAR(25) NULL DEFAULT NULL,
  `users_surname` VARCHAR(25) NULL DEFAULT NULL,
  `users_adress_id` INT(10) NULL DEFAULT NULL,
  PRIMARY KEY (`users_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
