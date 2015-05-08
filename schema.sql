-- MySQL Script generated by MySQL Workbench
-- 05/09/15 02:33:26
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema newswiftintern
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema newswiftintern
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `newswiftintern` DEFAULT CHARACTER SET latin1 ;
USE `newswiftintern` ;

-- -----------------------------------------------------
-- Table `newswiftintern`.`answers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `newswiftintern`.`answers` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `user_id` INT(11) NOT NULL,
  `ques_id` INT(11) NOT NULL,
  `answer` TEXT NOT NULL,
  `created` DATETIME NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 268
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `newswiftintern`.`applications`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `newswiftintern`.`applications` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `student_id` INT(11) NOT NULL,
  `opportunity_id` INT(11) NOT NULL,
  `property_id` INT(11) NOT NULL COMMENT 'resume_id, answer_id, result_id, rsvp_id',
  `status` VARCHAR(45) NOT NULL,
  `created` DATETIME NOT NULL,
  `updated` DATETIME NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 1627
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `newswiftintern`.`balances`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `newswiftintern`.`balances` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `user_id` INT(11) NOT NULL,
  `amount` INT(11) NOT NULL,
  `created` DATETIME NOT NULL,
  `updated` DATETIME NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 5
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `newswiftintern`.`bankaccounts`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `newswiftintern`.`bankaccounts` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `user_id` INT(11) NOT NULL,
  `bank_name` TEXT NOT NULL,
  `bank_address` TEXT NOT NULL,
  `ifsc_code` VARCHAR(32) NOT NULL,
  `account_number` VARCHAR(64) NOT NULL,
  `created` DATETIME NOT NULL,
  `updated` DATETIME NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `newswiftintern`.`blogposts`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `newswiftintern`.`blogposts` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `user_id` INT(11) NOT NULL,
  `title` TEXT NOT NULL,
  `content` TEXT NOT NULL,
  `category` TEXT NOT NULL,
  `validity` INT(3) NOT NULL,
  `created` DATETIME NOT NULL,
  `updated` DATETIME NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 186
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `newswiftintern`.`certificates`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `newswiftintern`.`certificates` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `property` VARCHAR(45) NULL DEFAULT NULL,
  `property_id` INT(11) NULL DEFAULT NULL,
  `uniqid` VARCHAR(255) NULL DEFAULT NULL,
  `validity` INT(11) NULL DEFAULT NULL,
  `created` DATETIME NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 694
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `newswiftintern`.`crms`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `newswiftintern`.`crms` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `email` VARCHAR(128) NOT NULL,
  `message_id` INT(11) NOT NULL,
  `user_group` VARCHAR(64) NOT NULL,
  `validity` INT(3) NOT NULL,
  `created` DATE NOT NULL,
  `updated` DATETIME NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = MyISAM
AUTO_INCREMENT = 45
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `newswiftintern`.`experiences`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `newswiftintern`.`experiences` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `organization_id` INT(11) NOT NULL,
  `user_id` INT(11) NOT NULL,
  `title` TEXT NOT NULL,
  `details` TEXT NOT NULL,
  `type` VARCHAR(45) NOT NULL COMMENT 'interview, paper, internship, job',
  `validity` INT(11) NOT NULL,
  `created` DATETIME NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 2891
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `newswiftintern`.`followers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `newswiftintern`.`followers` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `user_id` INT(11) NOT NULL,
  `type` TEXT NOT NULL,
  `following_id` INT(11) NOT NULL,
  `created` DATETIME NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `newswiftintern`.`images`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `newswiftintern`.`images` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `photo_id` VARCHAR(45) NULL DEFAULT NULL,
  `user_id` INT(11) NULL DEFAULT NULL,
  `property` VARCHAR(45) NULL DEFAULT NULL,
  `property_id` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 349
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `newswiftintern`.`members`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `newswiftintern`.`members` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `user_id` INT(11) NOT NULL,
  `organization_id` INT(11) NOT NULL,
  `designation` VARCHAR(45) NOT NULL,
  `authority` VARCHAR(10) NOT NULL,
  `validity` INT(3) NOT NULL,
  `created` DATETIME NOT NULL,
  `updated` DATETIME NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 182
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `newswiftintern`.`messages`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `newswiftintern`.`messages` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `from_user_id` INT(11) NOT NULL,
  `to_user_id` INT(11) NOT NULL,
  `subject` VARCHAR(255) NOT NULL,
  `message` TEXT NOT NULL,
  `validity` INT(11) NOT NULL,
  `created` DATETIME NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 472
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `newswiftintern`.`metas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `newswiftintern`.`metas` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `property` VARCHAR(64) NOT NULL,
  `property_id` VARCHAR(64) NOT NULL,
  `meta_key` VARCHAR(64) NOT NULL,
  `meta_value` VARCHAR(255) NOT NULL,
  `created` DATETIME NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = MyISAM
AUTO_INCREMENT = 7
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `newswiftintern`.`newsletters`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `newswiftintern`.`newsletters` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `subject` VARCHAR(128) NOT NULL,
  `message` TEXT NOT NULL,
  `user_group` VARCHAR(64) NOT NULL,
  `sent_count` INT(11) NOT NULL,
  `scheduled` DATE NOT NULL,
  `created` DATETIME NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = MyISAM
AUTO_INCREMENT = 16
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `newswiftintern`.`opportunities`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `newswiftintern`.`opportunities` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `user_id` INT(11) NOT NULL,
  `organization_id` INT(11) NOT NULL,
  `title` TEXT NOT NULL,
  `details` TEXT NOT NULL,
  `eligibility` TEXT NOT NULL,
  `category` VARCHAR(45) NOT NULL,
  `duration` VARCHAR(45) NOT NULL,
  `location` TEXT NOT NULL,
  `type` VARCHAR(20) NOT NULL COMMENT 'internship, competition, training',
  `last_date` DATE NOT NULL,
  `payment` VARCHAR(45) NOT NULL,
  `payment_mode` VARCHAR(45) NOT NULL DEFAULT 'offline' COMMENT 'online offline',
  `application_type` VARCHAR(45) NOT NULL COMMENT 'resume, test, event, question',
  `type_id` INT(11) NOT NULL,
  `is_active` INT(3) NOT NULL DEFAULT '1',
  `validity` INT(3) NOT NULL DEFAULT '0',
  `created` DATETIME NOT NULL,
  `updated` DATETIME NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 380
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `newswiftintern`.`options`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `newswiftintern`.`options` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `ques_id` INT(11) NOT NULL,
  `ques_option` TEXT NOT NULL,
  `is_answer` INT(11) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 719
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `newswiftintern`.`orders`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `newswiftintern`.`orders` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `user_id` INT(11) NOT NULL,
  `transaction_id` INT(11) NOT NULL,
  `property` VARCHAR(64) NOT NULL,
  `property_id` VARCHAR(64) NOT NULL,
  `status` VARCHAR(32) NOT NULL,
  `created` DATETIME NOT NULL,
  `updated` DATETIME NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 11
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `newswiftintern`.`organizations`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `newswiftintern`.`organizations` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `photo_id` INT(11) NOT NULL,
  `name` TEXT NOT NULL,
  `address` TEXT NOT NULL,
  `phone` VARCHAR(25) NOT NULL,
  `country` VARCHAR(45) NOT NULL,
  `website` VARCHAR(45) NOT NULL,
  `sector` VARCHAR(45) NOT NULL,
  `number_employee` VARCHAR(45) NOT NULL,
  `type` VARCHAR(45) NOT NULL COMMENT 'companyinstitute',
  `about` TEXT NOT NULL,
  `fbpage` TEXT NOT NULL,
  `linkedin_id` INT(11) NOT NULL,
  `validity` INT(3) NOT NULL,
  `created` DATETIME NOT NULL,
  `updated` DATETIME NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 1592
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `newswiftintern`.`participants`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `newswiftintern`.`participants` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `test_id` INT(11) NOT NULL,
  `user_id` INT(11) NOT NULL,
  `score` VARCHAR(45) NOT NULL,
  `time_taken` VARCHAR(45) NOT NULL,
  `attempted` INT(11) NOT NULL,
  `created` DATETIME NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 2297
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `newswiftintern`.`photographs`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `newswiftintern`.`photographs` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `filename` VARCHAR(255) NOT NULL,
  `type` VARCHAR(64) NOT NULL,
  `size` VARCHAR(64) NOT NULL,
  `created` DATETIME NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 1951
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `newswiftintern`.`qualifications`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `newswiftintern`.`qualifications` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `student_id` INT(11) NOT NULL,
  `organization_id` INT(11) NOT NULL,
  `degree` TEXT NOT NULL,
  `major` TEXT NOT NULL,
  `gpa` VARCHAR(32) NOT NULL,
  `passing_year` YEAR NOT NULL,
  `created` DATETIME NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 2069
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `newswiftintern`.`questions`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `newswiftintern`.`questions` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `test_id` INT(11) NOT NULL,
  `question` TEXT NOT NULL,
  `type` VARCHAR(45) NOT NULL COMMENT 'optionstextfile',
  `created` DATETIME NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 218
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `newswiftintern`.`resumes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `newswiftintern`.`resumes` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `student_id` INT(11) NOT NULL,
  `type` VARCHAR(45) NOT NULL,
  `resume` MEDIUMTEXT NOT NULL,
  `created` DATETIME NOT NULL,
  `updated` DATETIME NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 1086
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `newswiftintern`.`rsvps`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `newswiftintern`.`rsvps` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `user_id` INT(11) NOT NULL,
  `status` VARCHAR(45) NOT NULL COMMENT 'joinmaybe',
  `created` DATETIME NOT NULL,
  `updated` DATETIME NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `newswiftintern`.`socials`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `newswiftintern`.`socials` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `user_id` INT(11) NOT NULL,
  `social_platform` VARCHAR(64) NOT NULL,
  `link` TEXT NOT NULL,
  `created` DATETIME NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 714
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `newswiftintern`.`sponsoreds`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `newswiftintern`.`sponsoreds` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `opportunity_id` INT(11) NULL DEFAULT NULL,
  `user_id` INT(11) NULL DEFAULT NULL,
  `start` DATETIME NULL DEFAULT NULL,
  `end` DATETIME NULL DEFAULT NULL,
  `is_active` INT(3) NULL DEFAULT NULL,
  `validity` INT(3) NULL DEFAULT NULL,
  `created` DATETIME NULL DEFAULT NULL,
  `updated` DATETIME NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 18
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `newswiftintern`.`stats`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `newswiftintern`.`stats` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `property` VARCHAR(45) NULL DEFAULT NULL,
  `property_id` VARCHAR(45) NULL DEFAULT NULL,
  `date` DATE NULL DEFAULT NULL,
  `viewed` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `newswiftintern`.`students`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `newswiftintern`.`students` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `user_id` INT(11) NULL DEFAULT NULL,
  `about` TEXT NULL DEFAULT NULL,
  `city` TEXT NULL DEFAULT NULL,
  `skills` TEXT NULL DEFAULT NULL,
  `created` DATETIME NOT NULL,
  `updated` DATETIME NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 2302
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `newswiftintern`.`tests`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `newswiftintern`.`tests` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `type` VARCHAR(45) NOT NULL COMMENT 'practice, certification, internship, competition',
  `user_id` INT(11) NOT NULL,
  `organization_id` INT(11) NOT NULL,
  `title` TEXT NOT NULL,
  `syllabus` TEXT NOT NULL,
  `subject` TEXT NOT NULL,
  `level` VARCHAR(45) NOT NULL,
  `time_limit` TIME NOT NULL,
  `is_active` INT(3) NOT NULL,
  `validity` INT(11) NOT NULL,
  `created` DATETIME NOT NULL,
  `updated` DATETIME NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 28
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `newswiftintern`.`transactions`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `newswiftintern`.`transactions` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `email` VARCHAR(255) NOT NULL,
  `mihpayid` INT(11) NOT NULL,
  `mode` VARCHAR(16) NOT NULL,
  `status` VARCHAR(16) NOT NULL,
  `unmappedstatus` VARCHAR(16) NOT NULL,
  `txnid` VARCHAR(32) NOT NULL,
  `amount` DECIMAL(10,2) NOT NULL,
  `addedon` DATETIME NOT NULL,
  `productinfo` TEXT NOT NULL,
  `address1` TEXT NOT NULL,
  `zipcode` VARCHAR(32) NOT NULL,
  `phone` VARCHAR(32) NOT NULL,
  `field9` VARCHAR(32) NOT NULL,
  `PG_TYPE` VARCHAR(32) NOT NULL,
  `bank_ref_num` VARCHAR(32) NOT NULL,
  `bankcode` VARCHAR(32) NOT NULL,
  `error` VARCHAR(32) NOT NULL,
  `error_Message` TEXT NOT NULL,
  `amount_split` TEXT NOT NULL,
  `payuMoneyId` INT(11) NOT NULL,
  `discount` DECIMAL(10,2) NOT NULL,
  `net_amount_debit` DECIMAL(10,2) NOT NULL,
  `created` DATETIME NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `newswiftintern`.`users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `newswiftintern`.`users` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(64) NULL DEFAULT NULL,
  `email` VARCHAR(64) NULL DEFAULT NULL,
  `password` VARCHAR(128) NULL DEFAULT NULL,
  `phone` VARCHAR(16) NULL DEFAULT NULL,
  `access_token` VARCHAR(128) NULL DEFAULT NULL,
  `login_number` INT(11) NULL DEFAULT NULL,
  `type` VARCHAR(45) NULL DEFAULT NULL COMMENT 'student\nemployer\nadmin',
  `validity` INT(3) NULL DEFAULT NULL,
  `last_ip` VARCHAR(32) NULL DEFAULT NULL,
  `last_login` DATETIME NULL DEFAULT NULL,
  `created` DATETIME NULL DEFAULT NULL,
  `updated` DATETIME NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 2519
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `newswiftintern`.`works`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `newswiftintern`.`works` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `student_id` INT(11) NOT NULL,
  `organization_id` INT(11) NOT NULL,
  `duration` VARCHAR(45) NOT NULL,
  `designation` VARCHAR(45) NOT NULL,
  `responsibility` TEXT NOT NULL,
  `created` DATETIME NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 153
DEFAULT CHARACTER SET = latin1;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
