CREATE SCHEMA `medjuzupanijski` ;

CREATE TABLE `medjuzupanijski`.`stanica` (
  `id_stanica` INT NOT NULL AUTO_INCREMENT,
  `naziv` VARCHAR(64) NULL,
  PRIMARY KEY (`id_stanica`),
  UNIQUE INDEX `id_stanica_UNIQUE` (`id_stanica` ASC));
  
INSERT INTO `medjuzupanijski`.`stanica` (`naziv`) VALUES ('Đakovo');
INSERT INTO `medjuzupanijski`.`stanica` (`naziv`) VALUES ('Fažana');
INSERT INTO `medjuzupanijski`.`stanica` (`naziv`) VALUES ('Gračac');
INSERT INTO `medjuzupanijski`.`stanica` (`naziv`) VALUES ('Karlovac');
INSERT INTO `medjuzupanijski`.`stanica` (`naziv`) VALUES ('Makarska');
INSERT INTO `medjuzupanijski`.`stanica` (`naziv`) VALUES ('Obrovac');
INSERT INTO `medjuzupanijski`.`stanica` (`naziv`) VALUES ('Omiš');
INSERT INTO `medjuzupanijski`.`stanica` (`naziv`) VALUES ('Pazin');
INSERT INTO `medjuzupanijski`.`stanica` (`naziv`) VALUES ('Plitvice');
INSERT INTO `medjuzupanijski`.`stanica` (`naziv`) VALUES ('Poreč');
INSERT INTO `medjuzupanijski`.`stanica` (`naziv`) VALUES ('Pula');
INSERT INTO `medjuzupanijski`.`stanica` (`naziv`) VALUES ('Rijeka');
INSERT INTO `medjuzupanijski`.`stanica` (`naziv`) VALUES ('Rovinj');
INSERT INTO `medjuzupanijski`.`stanica` (`naziv`) VALUES ('Slavonski Brod');
INSERT INTO `medjuzupanijski`.`stanica` (`naziv`) VALUES ('Slunj');
INSERT INTO `medjuzupanijski`.`stanica` (`naziv`) VALUES ('Split');
INSERT INTO `medjuzupanijski`.`stanica` (`naziv`) VALUES ('Šibenik');
INSERT INTO `medjuzupanijski`.`stanica` (`naziv`) VALUES ('Trogir');
INSERT INTO `medjuzupanijski`.`stanica` (`naziv`) VALUES ('Udbina');
INSERT INTO `medjuzupanijski`.`stanica` (`naziv`) VALUES ('Velika Kopanica');
INSERT INTO `medjuzupanijski`.`stanica` (`naziv`) VALUES ('Vinkovci');
INSERT INTO `medjuzupanijski`.`stanica` (`naziv`) VALUES ('Vodnjan');
INSERT INTO `medjuzupanijski`.`stanica` (`naziv`) VALUES ('Vukovar');
INSERT INTO `medjuzupanijski`.`stanica` (`naziv`) VALUES ('Zadar');
INSERT INTO `medjuzupanijski`.`stanica` (`naziv`) VALUES ('Zagreb');
INSERT INTO `medjuzupanijski`.`stanica` (`naziv`) VALUES ('Županja');

  
  
  
 CREATE TABLE `medjuzupanijski`.`poveznica` (
  `id_poveznica` INT NOT NULL AUTO_INCREMENT,
  `id_polazak` INT NOT NULL,
  `vrijeme_polaska` TIME NOT NULL,
  `id_dolazak` INT NOT NULL,
  `vrijeme_dolaska` TIME NOT NULL,
  `id_linija` INT NOT NULL,
  `redni_broj` INT NOT NULL,
  PRIMARY KEY (`id_poveznica`),
  UNIQUE INDEX `id_poveznica_UNIQUE` (`id_poveznica` ASC),
  FOREIGN KEY (id_polazak) REFERENCES stanica(id_stanica),
FOREIGN KEY (id_dolazak) REFERENCES stanica(id_stanica),
FOREIGN KEY (id_linija) REFERENCES linija(id_linija));


  
  
  CREATE TABLE `medjuzupanijski`.`linija` (
  `id_linija` INT NOT NULL AUTO_INCREMENT,
  `identifikator` VARCHAR(5) NOT NULL,
   `relacija` VARCHAR (50) NOT NULL,
  `napomena` VARCHAR(300) NULL,
  PRIMARY KEY (`id_linija`),
  UNIQUE INDEX `id_linija_UNIQUE` (`id_linija` ASC));
  
  INSERT INTO `medjuzupanijski`.`linija` (`identifikator`, `relacija`, `napomena`) VALUES ('A', 'Vinkovci-Pula-Vinkovci', 'Polasci iz Pule i Vinkovaca: ponedjeljak, četvrtak, petak, nededjelja. (15.6.-31.8. ponedjeljak, utorak, četvrtak, petak, subota, nedjelja)');
INSERT INTO `medjuzupanijski`.`linija` (`identifikator`, `relacija`, `napomena`) VALUES ('B', 'Vinkovci-Makarska-Vinkovci', 'Polazak iz Vinkovaca: utorak i petak. Polazak iz Makarske: četvrtak i nedjelja');
INSERT INTO `medjuzupanijski`.`linija` (`identifikator`,`relacija`, `napomena`) VALUES ('C', 'Vinkovci-Zadar-Vinkovci',  'Linija prometuje: 1.7. - 31.8. Polazak iz Vinkovaca: srijeda i subora. Polazak iz Zadra četvrtak i nedjelja');
