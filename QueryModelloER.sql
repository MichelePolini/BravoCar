-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema CarSharing
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema CarSharing
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `CarSharing` DEFAULT CHARACTER SET utf8 ;
USE `CarSharing` ;

-- -----------------------------------------------------
-- Table `CarSharing`.`Utente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CarSharing`.`Utente` (
  `idUtente` INT NOT NULL AUTO_INCREMENT,
  `Nome` VARCHAR(45) NOT NULL,
  `Cognome` VARCHAR(45) NOT NULL,
  `Email` VARCHAR(45) NOT NULL,
  `NumeroCarta` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idUtente`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CarSharing`.`Auto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CarSharing`.`Auto` (
  `Targa` VARCHAR(45) NOT NULL,
  `NumeroPosti` INT NOT NULL,
  `Marca` VARCHAR(45) NOT NULL,
  `Modello` VARCHAR(45) NOT NULL,
  `Posizione` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Targa`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CarSharing`.`Utilizzi`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CarSharing`.`Utilizzi` (
  `idUtente` INT NOT NULL,
  `TargaAuto` VARCHAR(45) NOT NULL,
  `OraInizio` DATETIME NOT NULL,
  `OraFine` DATETIME NOT NULL,
  PRIMARY KEY (`TargaAuto`, `idUtente`),
  INDEX `fk_Utente_has_Auto_Auto1_idx` (`TargaAuto` ASC) VISIBLE,
  INDEX `fk_Utente_has_Auto_Utente1_idx` (`idUtente` ASC) VISIBLE,
  CONSTRAINT `fk_Utente_has_Auto_Utente1`
    FOREIGN KEY (`idUtente`)
    REFERENCES `CarSharing`.`Utente` (`idUtente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Utente_has_Auto_Auto1`
    FOREIGN KEY (`TargaAuto`)
    REFERENCES `CarSharing`.`Auto` (`Targa`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CarSharing`.`Utilizzi`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CarSharing`.`Utilizzi` (
  `idUtente` INT NOT NULL,
  `TargaAuto` VARCHAR(45) NOT NULL,
  `OraInizio` DATETIME NOT NULL,
  `OraFine` DATETIME NOT NULL,
  PRIMARY KEY (`TargaAuto`, `idUtente`),
  INDEX `fk_Utente_has_Auto_Auto1_idx` (`TargaAuto` ASC) VISIBLE,
  INDEX `fk_Utente_has_Auto_Utente1_idx` (`idUtente` ASC) VISIBLE,
  CONSTRAINT `fk_Utente_has_Auto_Utente1`
    FOREIGN KEY (`idUtente`)
    REFERENCES `CarSharing`.`Utente` (`idUtente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Utente_has_Auto_Auto1`
    FOREIGN KEY (`TargaAuto`)
    REFERENCES `CarSharing`.`Auto` (`Targa`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CarSharing`.`TeamService`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CarSharing`.`TeamService` (
  `idTeamService` INT NOT NULL AUTO_INCREMENT,
  `NumeroComponenti` INT NOT NULL,
  PRIMARY KEY (`idTeamService`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CarSharing`.`Riparazioni`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CarSharing`.`Riparazioni` (
  `TargaAuto` VARCHAR(45) NOT NULL,
  `idTeamService` INT NOT NULL,
  `Data` DATE NOT NULL,
  `Importo` INT NOT NULL,
  `Luogo` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`TargaAuto`, `idTeamService`),
  INDEX `fk_Auto_has_TeamService_TeamService1_idx` (`idTeamService` ASC) VISIBLE,
  INDEX `fk_Auto_has_TeamService_Auto1_idx` (`TargaAuto` ASC) VISIBLE,
  CONSTRAINT `fk_Auto_has_TeamService_Auto1`
    FOREIGN KEY (`TargaAuto`)
    REFERENCES `CarSharing`.`Auto` (`Targa`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Auto_has_TeamService_TeamService1`
    FOREIGN KEY (`idTeamService`)
    REFERENCES `CarSharing`.`TeamService` (`idTeamService`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CarSharing`.`Manutenzione`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CarSharing`.`Manutenzione` (
  `idManutenzione` INT NOT NULL AUTO_INCREMENT,
  `Tipo` VARCHAR(45) NOT NULL,
  `idTeamService` INT NOT NULL,
  `TargaAuto` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idManutenzione`),
  INDEX `fk_Manutenzione_TeamService1_idx` (`idTeamService` ASC) VISIBLE,
  INDEX `fk_Manutenzione_Auto1_idx` (`TargaAuto` ASC) VISIBLE,
  CONSTRAINT `fk_Manutenzione_TeamService1`
    FOREIGN KEY (`idTeamService`)
    REFERENCES `CarSharing`.`TeamService` (`idTeamService`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Manutenzione_Auto1`
    FOREIGN KEY (`TargaAuto`)
    REFERENCES `CarSharing`.`Auto` (`Targa`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CarSharing`.`MembroTeam`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CarSharing`.`MembroTeam` (
  `idMembroTeam` INT NOT NULL AUTO_INCREMENT,
  `Nome` VARCHAR(45) NOT NULL,
  `Cognome` VARCHAR(45) NOT NULL,
  `Eta` INT NOT NULL,
  `idTeamService` INT NOT NULL,
  PRIMARY KEY (`idMembroTeam`),
  INDEX `fk_MembroTeam_TeamService1_idx` (`idTeamService` ASC) VISIBLE,
  CONSTRAINT `fk_MembroTeam_TeamService1`
    FOREIGN KEY (`idTeamService`)
    REFERENCES `CarSharing`.`TeamService` (`idTeamService`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
