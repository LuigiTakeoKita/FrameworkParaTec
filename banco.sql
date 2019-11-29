-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema banco
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema banco
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `banco` DEFAULT CHARACTER SET utf8 ;
USE `banco` ;

-- -----------------------------------------------------
-- Table `banco`.`tabela2`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `banco`.`tabela2` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `banco`.`tabela`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `banco`.`tabela` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NULL,
  `tabela2_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_tabela_tabela2_idx` (`tabela2_id` ASC),
  CONSTRAINT `fk_tabela_tabela2`
    FOREIGN KEY (`tabela2_id`)
    REFERENCES `banco`.`tabela2` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
