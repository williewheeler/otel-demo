SET GLOBAL TIME_ZONE ='+00:00';

DROP DATABASE IF EXISTS provider2;
CREATE DATABASE provider2 CHARACTER SET utf8 COLLATE utf8_general_ci;
USE provider2;

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
  (0, 'SEA', 'LAS', 'OrionAir', '2020-12-01 12:10:00', '2020-12-09 11:40:00', 'Basic Economy', 112),
  (0, 'SEA', 'LAS', 'Southeast', '2020-12-01 13:25:00', '2020-12-09 18:20:00', 'Basic Economy', 124),
  (0, 'SEA', 'LAS', 'JetBlack', '2020-12-01 09:15:00', '2020-12-09 06:35:00', 'Basic Economy', 150)
;
