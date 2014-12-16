CREATE SCHEMA `zupanijski` ;

CREATE TABLE `zupanijski`.`stanica` (
  `id_stanica` INT NOT NULL AUTO_INCREMENT,
  `naziv` VARCHAR(64) NULL,
  PRIMARY KEY (`id_stanica`),
  UNIQUE INDEX `id_stanica_UNIQUE` (`id_stanica` ASC));
  
INSERT INTO `zupanijski`.`stanica` (`naziv`) VALUES ('Ada');
INSERT INTO `zupanijski`.`stanica` (`naziv`) VALUES ('Andrijaševci');
INSERT INTO `zupanijski`.`stanica` (`naziv`) VALUES ('Antin');
INSERT INTO `zupanijski`.`stanica` (`naziv`) VALUES ('Antunovac');
INSERT INTO `zupanijski`.`stanica` (`naziv`) VALUES ('Apševci');
INSERT INTO `zupanijski`.`stanica` (`naziv`) VALUES ('Babina Greda');
INSERT INTO `zupanijski`.`stanica` (`naziv`) VALUES ('Banovci');
INSERT INTO `zupanijski`.`stanica` (`naziv`) VALUES ('Berak');
INSERT INTO `zupanijski`.`stanica` (`naziv`) VALUES ('Bogdanovci');
INSERT INTO `zupanijski`.`stanica` (`naziv`) VALUES ('Borovo Naselje');
INSERT INTO `zupanijski`.`stanica` (`naziv`) VALUES ('Bošnjaci');
INSERT INTO `zupanijski`.`stanica` (`naziv`) VALUES ('Brijest');
INSERT INTO `zupanijski`.`stanica` (`naziv`) VALUES ('Bršadin');
INSERT INTO `zupanijski`.`stanica` (`naziv`) VALUES ('Budrovci');
INSERT INTO `zupanijski`.`stanica` (`naziv`) VALUES ('Cerić');
INSERT INTO `zupanijski`.`stanica` (`naziv`) VALUES ('Cerna');
INSERT INTO `zupanijski`.`stanica` (`naziv`) VALUES ('Donje Novo Selo');
INSERT INTO `zupanijski`.`stanica` (`naziv`) VALUES ('Divoš');
INSERT INTO `zupanijski`.`stanica` (`naziv`) VALUES ('Drenovci');
INSERT INTO `zupanijski`.`stanica` (`naziv`) VALUES ('Đakovo');
INSERT INTO `zupanijski`.`stanica` (`naziv`) VALUES ('Đeletovci');
INSERT INTO `zupanijski`.`stanica` (`naziv`) VALUES ('Đurđanci');
INSERT INTO `zupanijski`.`stanica` (`naziv`) VALUES ('Đurići');
INSERT INTO `zupanijski`.`stanica` (`naziv`) VALUES ('Ernestinovo');
INSERT INTO `zupanijski`.`stanica` (`naziv`) VALUES ('Gaboš');
INSERT INTO `zupanijski`.`stanica` (`naziv`) VALUES ('Gradište');
INSERT INTO `zupanijski`.`stanica` (`naziv`) VALUES ('Gunja');
INSERT INTO `zupanijski`.`stanica` (`naziv`) VALUES ('Ilača');
INSERT INTO `zupanijski`.`stanica` (`naziv`) VALUES ('Ivankovo');
INSERT INTO `zupanijski`.`stanica` (`naziv`) VALUES ('Ivanovac');
INSERT INTO `zupanijski`.`stanica` (`naziv`) VALUES ('Jarmina');
INSERT INTO `zupanijski`.`stanica` (`naziv`) VALUES ('Karadžićevo');
INSERT INTO `zupanijski`.`stanica` (`naziv`) VALUES ('Komletinci');
INSERT INTO `zupanijski`.`stanica` (`naziv`) VALUES ('Korođ');
INSERT INTO `zupanijski`.`stanica` (`naziv`) VALUES ('Laslovo');
INSERT INTO `zupanijski`.`stanica` (`naziv`) VALUES ('Lipovac');
INSERT INTO `zupanijski`.`stanica` (`naziv`) VALUES ('Lovas');
INSERT INTO `zupanijski`.`stanica` (`naziv`) VALUES ('Marinci');
INSERT INTO `zupanijski`.`stanica` (`naziv`) VALUES ('Markušica');
INSERT INTO `zupanijski`.`stanica` (`naziv`) VALUES ('Mirkovci');
INSERT INTO `zupanijski`.`stanica` (`naziv`) VALUES ('Mlaka');
INSERT INTO `zupanijski`.`stanica` (`naziv`) VALUES ('Novi i Strai Jankovci');
INSERT INTO `zupanijski`.`stanica` (`naziv`) VALUES ('Novi Mikanovci');
INSERT INTO `zupanijski`.`stanica` (`naziv`) VALUES ('Nijemci');
INSERT INTO `zupanijski`.`stanica` (`naziv`) VALUES ('Nuštar');
INSERT INTO `zupanijski`.`stanica` (`naziv`) VALUES ('Orolik');
INSERT INTO `zupanijski`.`stanica` (`naziv`) VALUES ('Osijek');
INSERT INTO `zupanijski`.`stanica` (`naziv`) VALUES ('Ostrovo');
INSERT INTO `zupanijski`.`stanica` (`naziv`) VALUES ('Otok');
INSERT INTO `zupanijski`.`stanica` (`naziv`) VALUES ('Podgrađe');
INSERT INTO `zupanijski`.`stanica` (`naziv`) VALUES ('Podvinje');
INSERT INTO `zupanijski`.`stanica` (`naziv`) VALUES ('Posavski Podgajci');
INSERT INTO `zupanijski`.`stanica` (`naziv`) VALUES ('Privlaka');
INSERT INTO `zupanijski`.`stanica` (`naziv`) VALUES ('Prkovci');
INSERT INTO `zupanijski`.`stanica` (`naziv`) VALUES ('Račinovci');
INSERT INTO `zupanijski`.`stanica` (`naziv`) VALUES ('Rajevo Selo');
INSERT INTO `zupanijski`.`stanica` (`naziv`) VALUES ('Retkovci');
INSERT INTO `zupanijski`.`stanica` (`naziv`) VALUES ('Rokovci');
INSERT INTO `zupanijski`.`stanica` (`naziv`) VALUES ('Stari Mikanovci');
INSERT INTO `zupanijski`.`stanica` (`naziv`) VALUES ('Silaš');
INSERT INTO `zupanijski`.`stanica` (`naziv`) VALUES ('Slakovci');
INSERT INTO `zupanijski`.`stanica` (`naziv`) VALUES ('Soljani');
INSERT INTO `zupanijski`.`stanica` (`naziv`) VALUES ('Srijemske Laze');
INSERT INTO `zupanijski`.`stanica` (`naziv`) VALUES ('Strošinci');
INSERT INTO `zupanijski`.`stanica` (`naziv`) VALUES ('Šiškovci');
INSERT INTO `zupanijski`.`stanica` (`naziv`) VALUES ('Tenja');
INSERT INTO `zupanijski`.`stanica` (`naziv`) VALUES ('Topola');
INSERT INTO `zupanijski`.`stanica` (`naziv`) VALUES ('Tordinci');
INSERT INTO `zupanijski`.`stanica` (`naziv`) VALUES ('Tovarnik');
INSERT INTO `zupanijski`.`stanica` (`naziv`) VALUES ('Vinkovci');
INSERT INTO `zupanijski`.`stanica` (`naziv`) VALUES ('Vođinci');
INSERT INTO `zupanijski`.`stanica` (`naziv`) VALUES ('Vrbanja');
INSERT INTO `zupanijski`.`stanica` (`naziv`) VALUES ('Vrbica');
INSERT INTO `zupanijski`.`stanica` (`naziv`) VALUES ('Vukovar');
INSERT INTO `zupanijski`.`stanica` (`naziv`) VALUES ('Županja');


  
  
  
 CREATE TABLE `zupanijski`.`poveznica` (
  `id_poveznica` INT NOT NULL AUTO_INCREMENT,
  `id_polazak` INT NOT NULL,
  `vrijeme_polaska` TIME NOT NULL,
  `id_dolazak` INT NOT NULL,
  `vrijeme_dolaska` TIME NOT NULL,
  `id_linija` INT NOT NULL,
   `id_napomene` INT NOT NULL,
  `redni_broj` INT NOT NULL,
  PRIMARY KEY (`id_poveznica`),
  UNIQUE INDEX `id_poveznica_UNIQUE` (`id_poveznica` ASC),
  FOREIGN KEY (id_polazak) REFERENCES stanica(id_stanica),
FOREIGN KEY (id_dolazak) REFERENCES stanica(id_stanica),
FOREIGN KEY (id_linija) REFERENCES linija(id_linija),
FOREIGN KEY (id_napomene) REFERENCES napomene(id_napomene));


  
  
  CREATE TABLE `zupanijski`.`linija` (
  `id_linija` INT NOT NULL AUTO_INCREMENT,
  `identifikator` VARCHAR(5) NOT NULL,
   `relacija` VARCHAR (75) NOT NULL,
  PRIMARY KEY (`id_linija`),
  UNIQUE INDEX `id_linija_UNIQUE` (`id_linija` ASC));
  
INSERT INTO `zupanijski`.`linija` (`identifikator`, `relacija`) VALUES ('A', 'Vinkovci-Jarmina-Antunovac-Osijek');
INSERT INTO `zupanijski`.`linija` (`identifikator`, `relacija`) VALUES ('B', 'Vinkovci-Nuštar-Cerić');
INSERT INTO `zupanijski`.`linija` (`identifikator`, `relacija`) VALUES ('C', 'Vinkovci-Bogdanovci-Vukovar');
INSERT INTO `zupanijski`.`linija` (`identifikator`, `relacija`) VALUES ('D', 'Vinkovci-Nuštar-Gaboš-Tordinci-Korođ-Osijek');
INSERT INTO `zupanijski`.`linija` (`identifikator`, `relacija`) VALUES ('E', 'Vinkovci-Vukovar');
INSERT INTO `zupanijski`.`linija` (`identifikator`, `relacija`) VALUES ('F', 'Vinkovci-Jarmina-Silaš-Osijek');
INSERT INTO `zupanijski`.`linija` (`identifikator`, `relacija`) VALUES ('G', 'Vinkovci-Otok-Donje Novo Selo-Lipovac');
INSERT INTO `zupanijski`.`linija` (`identifikator`, `relacija`) VALUES ('H', 'Vinkovci-Slakovci-Lipovac');
INSERT INTO `zupanijski`.`linija` (`identifikator`, `relacija`) VALUES ('I', 'Vinkovci-Sakovci-Tovarnik-Sotin-Vukovar-Vinkovci');
INSERT INTO `zupanijski`.`linija` (`identifikator`, `relacija`) VALUES ('J', 'Vinkovci-Tovarnik-Lovas');
INSERT INTO `zupanijski`.`linija` (`identifikator`, `relacija`) VALUES ('K', 'Vinkovci-Retkovci-Prkovci-Kladavac');
INSERT INTO `zupanijski`.`linija` (`identifikator`, `relacija`) VALUES ('L', 'Vinkovci-Đakovo');
INSERT INTO `zupanijski`.`linija` (`identifikator`, `relacija`) VALUES ('M', 'Vinkovci-Vrbanja-Strošinci');
INSERT INTO `zupanijski`.`linija` (`identifikator`, `relacija`) VALUES ('N', 'Vinkovci-Mikanovci-Vrbica');
INSERT INTO `zupanijski`.`linija` (`identifikator`, `relacija`) VALUES ('O', 'Vinkovci-Posavski Podgajci-Rajevo Selo-Gunja-Račinovci');
INSERT INTO `zupanijski`.`linija` (`identifikator`, `relacija`) VALUES ('P', 'Vinkovci-Cerna-Šiškovci-Županja');
INSERT INTO `zupanijski`.`linija` (`identifikator`, `relacija`) VALUES ('R', 'Vinkovci-Cerna-Babina Greda-Štitar-Županja');
INSERT INTO `zupanijski`.`linija` (`identifikator`, `relacija`) VALUES ('S', 'Vinkovci-Šiškovci-Ivankovo-Vinkovci');
INSERT INTO `zupanijski`.`linija` (`identifikator`, `relacija`) VALUES ('T', 'Vinkovci-Retkovci-Prkovci-Kladavac');


CREATE TABLE `zupanijski`.`napomene` (
  `id_napomene` INT NOT NULL AUTO_INCREMENT,
  `napomena` VARCHAR(200) NULL,
  PRIMARY KEY (`id_napomene`),
  UNIQUE INDEX `id_napomene_UNIQUE` (`id_napomene` ASC));

INSERT INTO `zupanijski`.`napomene` (`napomena`) VALUES ('Linija prometuje od ponedjeljka do subote.');
INSERT INTO `zupanijski`.`napomene` (`napomena`) VALUES ('Linija prometuje od ponedjeljka do petka.');
INSERT INTO `zupanijski`.`napomene` (`napomena`) VALUES ('Linija prometuje samo subotom.');
INSERT INTO `zupanijski`.`napomene` (`napomena`) VALUES ('Linija ne prometuje tijekom školskih praznika.');