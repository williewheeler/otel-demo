SET GLOBAL TIME_ZONE ='+00:00';

DROP DATABASE IF EXISTS provider1;
CREATE DATABASE provider1 CHARACTER SET utf8 COLLATE utf8_general_ci;
USE provider1;

CREATE TABLE flight (
  id INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  origin CHAR(3) NOT NULL,
  destination CHAR(3) NOT NULL,
  airline VARCHAR(40) NOT NULL,
  departing DATETIME NOT NULL,
  returning DATETIME NOT NULL,
  class VARCHAR(40) NOT NULL,
  price INT UNSIGNED NOT NULL,
  PRIMARY KEY(id)
) ENGINE=InnoDB;

INSERT INTO flight VALUES
  (0, 'SEA', 'LAS', 'Deltoid', '2020-12-01 12:10:00', '2020-12-09 11:40:00', 'Basic Economy', 105),
  (0, 'SEA', 'LAS', 'Unitely', '2020-12-01 13:25:00', '2020-12-09 18:20:00', 'Basic Economy', 110),
  (0, 'SEA', 'LAS', 'Pan-Um', '2020-12-01 09:15:00', '2020-12-09 06:35:00', 'Basic Economy', 180)
;
