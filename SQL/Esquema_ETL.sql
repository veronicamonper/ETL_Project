-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema ETL_Project
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema ETL_Project
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `ETL_Project` ;
USE `ETL_Project` ;

-- -----------------------------------------------------
-- Table `ETL_Project`.`Curso`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ETL_Project`.`Curso` (
  `Opp_ID` VARCHAR(45) NOT NULL,
  `Interest` VARCHAR(45) NOT NULL,
  `Formato` VARCHAR(45) NOT NULL,
  `Start_Date` DATE NOT NULL,
  `Campus` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Opp_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ETL_Project`.`Calendario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ETL_Project`.`Calendario` (
  `idCalendario` INT NOT NULL,
  `Week` INT NOT NULL,
  `Year` INT NOT NULL,
  PRIMARY KEY (`idCalendario`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ETL_Project`.`Opportunity`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ETL_Project`.`Opportunity` (
  `Opp_id` VARCHAR(45) NOT NULL,
  `Created_Date` DATE NOT NULL,
  `Close_Date` DATE NOT NULL,
  `Stage` VARCHAR(45) NOT NULL,
  `Stage_before_close` VARCHAR(45) NOT NULL,
  `Week` INT NOT NULL,
  `Year` INT NOT NULL,
  `Curso_Opp_ID` VARCHAR(45) NOT NULL,
  `Calendario_idCalendario` INT NOT NULL,
  PRIMARY KEY (`Opp_id`),
  INDEX `fk_Opportunity_Curso1_idx` (`Curso_Opp_ID` ASC) VISIBLE,
  INDEX `fk_Opportunity_Calendario1_idx` (`Calendario_idCalendario` ASC) VISIBLE,
  CONSTRAINT `fk_Opportunity_Curso1`
    FOREIGN KEY (`Curso_Opp_ID`)
    REFERENCES `ETL_Project`.`Curso` (`Opp_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Opportunity_Calendario1`
    FOREIGN KEY (`Calendario_idCalendario`)
    REFERENCES `ETL_Project`.`Calendario` (`idCalendario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ETL_Project`.`Clientes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ETL_Project`.`Clientes` (
  `Opp_ID` VARCHAR(45) NOT NULL,
  `Name` VARCHAR(45) NOT NULL,
  `Email` VARCHAR(45) NOT NULL,
  `City` VARCHAR(45) NOT NULL,
  `Opportunity_Opp_id` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Opp_ID`, `Opportunity_Opp_id`),
  INDEX `fk_Clientes_Opportunity_idx` (`Opportunity_Opp_id` ASC) VISIBLE,
  CONSTRAINT `fk_Clientes_Opportunity`
    FOREIGN KEY (`Opportunity_Opp_id`)
    REFERENCES `ETL_Project`.`Opportunity` (`Opp_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ETL_Project`.`Ibex`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ETL_Project`.`Ibex` (
  `idIbex` INT NOT NULL,
  `Date` DATE NOT NULL,
  `Closure` FLOAT NOT NULL,
  `Opening` FLOAT NOT NULL,
  `Max` FLOAT NOT NULL,
  `Min` FLOAT NOT NULL,
  `Euros` FLOAT NOT NULL,
  `% var` VARCHAR(15) NOT NULL,
  `Week` INT NOT NULL,
  `Year` INT NULL,
  `Calendario_idCalendario` INT NOT NULL,
  PRIMARY KEY (`idIbex`),
  INDEX `fk_Ibex_Calendario1_idx` (`Calendario_idCalendario` ASC) VISIBLE,
  CONSTRAINT `fk_Ibex_Calendario1`
    FOREIGN KEY (`Calendario_idCalendario`)
    REFERENCES `ETL_Project`.`Calendario` (`idCalendario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;


