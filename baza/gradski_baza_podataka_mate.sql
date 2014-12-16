CREATE SCHEMA `gradski` ;

CREATE TABLE `gradski`.`stanica` (
  `id_stanica` INT NOT NULL AUTO_INCREMENT,
  `naziv` VARCHAR(64) NULL,
  PRIMARY KEY (`id_stanica`),
  UNIQUE INDEX `id_stanica_UNIQUE` (`id_stanica` ASC));
  
INSERT INTO `gradski`.`stanica` (`naziv`) VALUES ('\"Billa\"');
INSERT INTO `gradski`.`stanica` (`naziv`) VALUES ('Blato');
INSERT INTO `gradski`.`stanica` (`naziv`) VALUES ('Bolnica');
INSERT INTO `gradski`.`stanica` (`naziv`) VALUES ('Borinci 1');
INSERT INTO `gradski`.`stanica` (`naziv`) VALUES ('Borinci 2');
INSERT INTO `gradski`.`stanica` (`naziv`) VALUES ('Borinci 3');
INSERT INTO `gradski`.`stanica` (`naziv`) VALUES ('Centar');
INSERT INTO `gradski`.`stanica` (`naziv`) VALUES ('Centar Vinkovačkog Novog Sela');
INSERT INTO `gradski`.`stanica` (`naziv`) VALUES ('Cerić');
INSERT INTO `gradski`.`stanica` (`naziv`) VALUES ('Crkva sv. Antuna');
INSERT INTO `gradski`.`stanica` (`naziv`) VALUES ('Ekonomska škola');
INSERT INTO `gradski`.`stanica` (`naziv`) VALUES ('Gortanovo naselje 1');
INSERT INTO `gradski`.`stanica` (`naziv`) VALUES ('Gortanovo naselje 2');
INSERT INTO `gradski`.`stanica` (`naziv`) VALUES ('Jankovci R');
INSERT INTO `gradski`.`stanica` (`naziv`) VALUES ('Kačićeva (groblje)');
INSERT INTO `gradski`.`stanica` (`naziv`) VALUES ('Kanovci');
INSERT INTO `gradski`.`stanica` (`naziv`) VALUES ('Kolodvor');
INSERT INTO `gradski`.`stanica` (`naziv`) VALUES ('Križanje ulice Bana Jelačića');
INSERT INTO `gradski`.`stanica` (`naziv`) VALUES ('Lapovci');
INSERT INTO `gradski`.`stanica` (`naziv`) VALUES ('Ljeskovac');
INSERT INTO `gradski`.`stanica` (`naziv`) VALUES ('\"Makart\"');
INSERT INTO `gradski`.`stanica` (`naziv`) VALUES ('Mirkovci 1');
INSERT INTO `gradski`.`stanica` (`naziv`) VALUES ('Mirkovci 2');
INSERT INTO `gradski`.`stanica` (`naziv`) VALUES ('Mirkovci 3');
INSERT INTO `gradski`.`stanica` (`naziv`) VALUES ('Mirkovci 4');
INSERT INTO `gradski`.`stanica` (`naziv`) VALUES ('Mirkovci 5');
INSERT INTO `gradski`.`stanica` (`naziv`) VALUES ('Mirkovci (pruga)');
INSERT INTO `gradski`.`stanica` (`naziv`) VALUES ('Novi Jankovci (crkva)');
INSERT INTO `gradski`.`stanica` (`naziv`) VALUES ('Slavija 1');
INSERT INTO `gradski`.`stanica` (`naziv`) VALUES ('Slavija 2');
INSERT INTO `gradski`.`stanica` (`naziv`) VALUES ('Srednjoškolski centar');
INSERT INTO `gradski`.`stanica` (`naziv`) VALUES ('Stari Jankovci (crkva)');
INSERT INTO `gradski`.`stanica` (`naziv`) VALUES ('Stari Jankovci (općina)');
INSERT INTO `gradski`.`stanica` (`naziv`) VALUES ('Stari Jankovci (škola)');
INSERT INTO `gradski`.`stanica` (`naziv`) VALUES ('Tržnica');
INSERT INTO `gradski`.`stanica` (`naziv`) VALUES ('Ulica Bana Jelačića (\"Prkos\")');
INSERT INTO `gradski`.`stanica` (`naziv`) VALUES ('Ulica Duga (robna kuća)');
INSERT INTO `gradski`.`stanica` (`naziv`) VALUES ('Ulica Hansa Dietricha Genschera (\"Antonina\")');
INSERT INTO `gradski`.`stanica` (`naziv`) VALUES ('Ulica Hansa Dietricha Genschera (\"Poljostroj\")');
INSERT INTO `gradski`.`stanica` (`naziv`) VALUES ('Ulica Hrvatskih kraljeva (tržnica)');
INSERT INTO `gradski`.`stanica` (`naziv`) VALUES ('Ulica Kralja Zvonimira (tržnica)');
INSERT INTO `gradski`.`stanica` (`naziv`) VALUES ('Ulica Ruđera Boškovića 1');
INSERT INTO `gradski`.`stanica` (`naziv`) VALUES ('Ulica Ruđera Boškovića 2');
INSERT INTO `gradski`.`stanica` (`naziv`) VALUES ('\"Vibrobeton\"');
INSERT INTO `gradski`.`stanica` (`naziv`) VALUES ('\"Villa Lenije\"');
INSERT INTO `gradski`.`stanica` (`naziv`) VALUES ('\"Vinkovački vodovod\"');
INSERT INTO `gradski`.`stanica` (`naziv`) VALUES ('Vojarna');
INSERT INTO `gradski`.`stanica` (`naziv`) VALUES ('\"Volksbank\"');



  
  
  
 CREATE TABLE `gradski`.`poveznica` (
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


  
  
  CREATE TABLE `gradski`.`linija` (
  `id_linija` INT NOT NULL AUTO_INCREMENT,
  `identifikator` VARCHAR(5) NOT NULL,
   `relacija` VARCHAR (75) NOT NULL,
  PRIMARY KEY (`id_linija`),
  UNIQUE INDEX `id_linija_UNIQUE` (`id_linija` ASC));
  
INSERT INTO `gradski`.`linija` (`identifikator`, `relacija`) VALUES ('A', 'Vinkovačko Novo Selo-Srednjoškolski centar-Cerić');
INSERT INTO `gradski`.`linija` (`identifikator`, `relacija`) VALUES ('B', 'Borinci-Slavija-Srednjoškolski centar');
INSERT INTO `gradski`.`linija` (`identifikator`, `relacija`) VALUES ('C', 'Cerić-Gortanovo naselje-Centar-Kanovci');
INSERT INTO `gradski`.`linija` (`identifikator`, `relacija`) VALUES ('D', 'Jankovci-Mirkovci-Srednjoškolski centar');


CREATE TABLE `gradski`.`napomene` (
  `id_napomene` INT NOT NULL AUTO_INCREMENT,
  `napomena` VARCHAR(200) NULL,
  PRIMARY KEY (`id_napomene`),
  UNIQUE INDEX `id_napomene_UNIQUE` (`id_napomene` ASC));

INSERT INTO `gradski`.`napomene` (`napomena`) VALUES ('Linija prometuje od ponedjeljka do subote.');
INSERT INTO `gradski`.`napomene` (`napomena`) VALUES ('Linija prometuje od ponedjeljka do petka.');
INSERT INTO `gradski`.`napomene` (`napomena`) VALUES ('Linija prometuje samo subotom.');
INSERT INTO `gradski`.`napomene` (`napomena`) VALUES ('Linija ne prometuje tijekom školskih praznika.');
