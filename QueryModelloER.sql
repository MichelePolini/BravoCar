SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `quintaa_carsharing` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `quintaa_carsharing` ;

-- -----------------------------------------------------
-- Table `quintaa_carsharing`.`Utente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `quintaa_carsharing`.`Utente` (
  `idUtente` INT NOT NULL AUTO_INCREMENT,
  `Nome` VARCHAR(45) NOT NULL,
  `Cognome` VARCHAR(45) NOT NULL,
  `Email` VARCHAR(45) NOT NULL,
  `NumeroCarta` VARCHAR(45) NOT NULL,
  `Psw` VARCHAR(45) NOT NULL,
  `CVV` INT NOT NULL,
  PRIMARY KEY (`idUtente`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `quintaa_carsharing`.`Auto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `quintaa_carsharing`.`Auto` (
  `Targa` VARCHAR(45) NOT NULL,
  `NumeroPosti` INT NOT NULL,
  `Marca` VARCHAR(45) NOT NULL,
  `Modello` VARCHAR(45) NOT NULL,
  `Latitudine` VARCHAR(45) NOT NULL,
  `Longitudine` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Targa`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `quintaa_carsharing`.`Utilizzi`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `quintaa_carsharing`.`Utilizzi` (
  `idUtente` INT NOT NULL,
  `TargaAuto` VARCHAR(45) NOT NULL,
  `OraInizio` DATETIME NOT NULL,
  `OraFine` DATETIME NOT NULL,
  `Latitudine` VARCHAR(45) NOT NULL,
  `Longitudine` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`TargaAuto`, `idUtente`, `OraInizio`, `OraFine`),
  INDEX `fk_Utente_has_Auto_Auto1_idx` (`TargaAuto` ASC),
  INDEX `fk_Utente_has_Auto_Utente1_idx` (`idUtente` ASC),
  CONSTRAINT `fk_Utente_has_Auto_Utente1`
    FOREIGN KEY (`idUtente`)
    REFERENCES `quintaa_carsharing`.`Utente` (`idUtente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Utente_has_Auto_Auto1`
    FOREIGN KEY (`TargaAuto`)
    REFERENCES `quintaa_carsharing`.`Auto` (`Targa`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `quintaa_carsharing`.`Utilizzi`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `quintaa_carsharing`.`Utilizzi` (
  `idUtente` INT NOT NULL,
  `TargaAuto` VARCHAR(45) NOT NULL,
  `OraInizio` DATETIME NOT NULL,
  `OraFine` DATETIME NOT NULL,
  `Latitudine` VARCHAR(45) NOT NULL,
  `Longitudine` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`TargaAuto`, `idUtente`, `OraInizio`, `OraFine`),
  INDEX `fk_Utente_has_Auto_Auto1_idx` (`TargaAuto` ASC),
  INDEX `fk_Utente_has_Auto_Utente1_idx` (`idUtente` ASC),
  CONSTRAINT `fk_Utente_has_Auto_Utente1`
    FOREIGN KEY (`idUtente`)
    REFERENCES `quintaa_carsharing`.`Utente` (`idUtente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Utente_has_Auto_Auto1`
    FOREIGN KEY (`TargaAuto`)
    REFERENCES `quintaa_carsharing`.`Auto` (`Targa`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `quintaa_carsharing`.`TeamService`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `quintaa_carsharing`.`TeamService` (
  `idTeamService` INT NOT NULL AUTO_INCREMENT,
  `NumeroComponenti` INT NOT NULL,
  PRIMARY KEY (`idTeamService`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `quintaa_carsharing`.`Riparazioni`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `quintaa_carsharing`.`Riparazioni` (
  `TargaAuto` VARCHAR(45) NOT NULL,
  `idTeamService` INT NOT NULL,
  `DataRiparazione` DATE NOT NULL,
  `Importo` INT NOT NULL,
  `Descrzione` VARCHAR(45) NOT NULL,
  `Kilometraggio` INT NOT NULL,
  `Latitudine` VARCHAR(45) NOT NULL,
  `Longitudine` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idTeamService`, `TargaAuto`),
  INDEX `fk_Auto_has_TeamService_TeamService1_idx` (`idTeamService` ASC),
  INDEX `fk_Auto_has_TeamService_Auto1_idx` (`TargaAuto` ASC),
  CONSTRAINT `fk_Auto_has_TeamService_Auto1`
    FOREIGN KEY (`TargaAuto`)
    REFERENCES `quintaa_carsharing`.`Auto` (`Targa`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Auto_has_TeamService_TeamService1`
    FOREIGN KEY (`idTeamService`)
    REFERENCES `quintaa_carsharing`.`TeamService` (`idTeamService`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `quintaa_carsharing`.`MembroTeam`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `quintaa_carsharing`.`MembroTeam` (
  `idMembroTeam` INT NOT NULL AUTO_INCREMENT,
  `Nome` VARCHAR(45) NOT NULL,
  `Cognome` VARCHAR(45) NOT NULL,
  `Eta` INT NOT NULL,
  `idTeamService` INT NOT NULL,
  PRIMARY KEY (`idMembroTeam`),
  INDEX `fk_MembroTeam_TeamService1_idx` (`idTeamService` ASC),
  CONSTRAINT `fk_MembroTeam_TeamService1`
    FOREIGN KEY (`idTeamService`)
    REFERENCES `quintaa_carsharing`.`TeamService` (`idTeamService`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
