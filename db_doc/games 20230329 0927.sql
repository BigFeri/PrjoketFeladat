﻿--
-- Script was generated by Devart dbForge Studio 2019 for MySQL, Version 8.2.23.0
-- Product home page: http://www.devart.com/dbforge/mysql/studio
-- Script date 2023.03.29. 9:27:38
-- Server version: 5.5.5-10.4.24-MariaDB
-- Client version: 4.1
--

-- 
-- Disable foreign keys
-- 
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

-- 
-- Set SQL mode
-- 
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 
-- Set character set the client will use to send SQL statements to the server
--
SET NAMES 'utf8';

DROP DATABASE IF EXISTS games;

CREATE DATABASE IF NOT EXISTS games
	CHARACTER SET utf8
	COLLATE utf8_hungarian_ci;

--
-- Set default database
--
USE games;

--
-- Create table `types`
--
CREATE TABLE IF NOT EXISTS types (
  Id INT(11) NOT NULL AUTO_INCREMENT,
  TName VARCHAR(255) DEFAULT NULL,
  PRIMARY KEY (Id)
)
ENGINE = INNODB,
AUTO_INCREMENT = 7,
AVG_ROW_LENGTH = 2730,
CHARACTER SET utf8,
COLLATE utf8_hungarian_ci;

--
-- Create table `games`
--
CREATE TABLE IF NOT EXISTS games (
  Id INT(11) NOT NULL AUTO_INCREMENT,
  GNames VARCHAR(255) DEFAULT NULL,
  TId INT(11) DEFAULT NULL,
  MorS VARCHAR(255) DEFAULT NULL,
  PRIMARY KEY (Id)
)
ENGINE = INNODB,
AUTO_INCREMENT = 9,
AVG_ROW_LENGTH = 2048,
CHARACTER SET utf8,
COLLATE utf8_hungarian_ci;

--
-- Create foreign key
--
ALTER TABLE games 
  ADD CONSTRAINT FK_games_types_Id FOREIGN KEY (TId)
    REFERENCES types(Id);

DELIMITER $$

--
-- Create procedure `genStat`
--
CREATE DEFINER = 'root'@'localhost'
PROCEDURE genStat()
BEGIN

DELETE
  FROM games;
DELETE
  FROM types;


INSERT games (id, GNames, TId, MorS)
  VALUES (1, 'Two Point Hospital', 6, 'Singleplayer'),
  (2, 'Metal Gear Solid 5: The Phantom Pain', 1, 'Singeplayer/Multiplayer'),
  (3, 'Mortal Kombat 11', 2, 'Singleplayer/Multiplayer'),
  (4, 'Apex Legends', 4, 'Multiplayer'),
  (5, 'Fifa Series', 3, 'Singleplayer/Multiplayer'),
  (6, 'Minecraft', 5, 'Singleplayer/Multiplayer');

INSERT types (Id, TName)
  VALUES (1, 'Action'),
  (2, 'Fighting'),
  (3, 'Sports'),
  (4, 'Shooter'),
  (5, 'Sandbox/Open world'),
  (6, 'Simulation');



SELECT
  *
FROM games;
SELECT
  *
FROM types;

END
$$

DELIMITER ;

-- 
-- Dumping data for table types
--
INSERT INTO types VALUES
(1, 'Action'),
(2, 'Fighting'),
(3, 'Sports'),
(4, 'Shooter'),
(5, 'Sandbox/Open world'),
(6, 'Simulation');

-- 
-- Dumping data for table games
--
INSERT INTO games VALUES
(1, 'Two Point Hospital', 6, 'Singleplayer'),
(2, 'Metal Gear Solid 5: The Phantom Pain', 1, 'Singeplayer/Multiplayer'),
(3, 'Mortal Kombat 11\r\n', 2, 'Singleplayer/Multiplayer'),
(4, 'Apex Legends', 4, 'Multiplayer'),
(5, 'Fifa Series', 3, 'Singleplayer/Multiplayer'),
(6, 'Minecraft', 5, 'Singleplayer/Multiplayer'),
(7, 'Forma 1 Serie', 3, 'Multi and single'),
(8, 'Forma 1  Serie', 3, 'Multi and single');

-- 
-- Restore previous SQL mode
-- 
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

-- 
-- Enable foreign keys
-- 
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;