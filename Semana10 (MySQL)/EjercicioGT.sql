DROP DATABASE guardian_tale;

CREATE DATABASE guardian_tale;
USE guardian_tale;

/*Tabla elementos*/
CREATE TABLE elementos(
id_elemento INT PRIMARY KEY,
nombre_elemento VARCHAR(30)
);

CREATE TABLE personajes(
id_personaje INT PRIMARY KEY,
nombre VARCHAR(50) NOT NULL,    #"NOT NULL" evita que coloquen un vacio
edad INT,
rareza ENUM('NR','SR','SSR') NOT NULL,  #Restricción a 3 variables posibles 
nivel INT NOT NULL,
ataque INT NOT NULL,
defensa INT NOT NULL,
hp INT NOT NULL,
id_elemento INT NOT NULL,

FOREIGN KEY (id_elemento) REFERENCES elementos(id_elemento)
);

/*tabla arma*/
CREATE TABLE armas(
id_arma INT PRIMARY KEY,
nombre_arma VARCHAR(60),
tipo_arma VARCHAR(30),
ataque_arma INT,
bonus_hp INT,
id_personaje INT,

FOREIGN KEY (id_personaje) REFERENCES personajes(id_personaje)
);

/*Insertar elementos*/
INSERT INTO elementos (id_elemento, nombre_elemento) VALUES
(1, 'Basic'),
(2, 'Fire'),
(3, 'Water'),
(4, 'Earth'),
(5, 'Light'),
(6, 'Dark');

/*Insertar personaje*/
INSERT INTO personajes VALUES
(1, 'Knight', 20, 'SR', 60, 150, 120, 1200, 1),
(2, 'Little Princess', 10, 'NR', 1, 10, 10, 100, 5),
(3, 'Loraine', 22, 'NR', 50, 120, 100, 900, 5),
(4, 'Eva', 25, 'SR', 60, 140, 110, 1100, 1),
(5, 'Craig', 30, 'SR', 60, 100, 160, 1500, 4),
(6, 'Marianne', 19, 'SR', 60, 160, 90, 950, 3),
(7, 'Sohee', 18, 'SR', 60, 155, 95, 980, 5),
(8, 'Aoba', 21, 'NR', 50, 110, 100, 900, 4),
(9, 'Karina', 23, 'SR', 60, 140, 100, 1000, 6),
(10, 'Rachel', 24, 'SR', 60, 150, 100, 1000, 3),
(11, 'Elvira', 26, 'SR', 60, 155, 90, 950, 2),
(12, 'Catherine', 22, 'SR', 60, 150, 95, 970, 3),
(13, 'Hekate', 28, 'SR', 60, 160, 100, 1000, 4),
(14, 'Coco', 20, 'NR', 50, 120, 90, 850, 3),
(15, 'Dolf', 35, 'SR', 60, 145, 110, 1050, 2),
(16, 'Girgas', 40, 'SR', 60, 150, 120, 1100, 2),
(17, 'Amy', 19, 'SR', 60, 140, 100, 950, 1),
(18, 'Fei', 27, 'SR', 60, 145, 110, 1050, 1),
(19, 'Mei', 27, 'SR', 60, 145, 110, 1050, 1),
(20, 'Yuze', 23, 'SR', 60, 150, 95, 980, 6),
(21, 'Lavi', 18, 'NR', 50, 110, 90, 850, 4),
(22, 'Favi', 18, 'NR', 50, 110, 90, 850, 4),
(23, 'Ranpang', 29, 'SR', 60, 140, 120, 1100, 1),
(24, 'Marvin', 32, 'SR', 60, 150, 130, 1200, 4),
(25, 'Shapira', 26, 'SR', 60, 155, 100, 1000, 6),
(26, 'Alef', 34, 'SSR', 70, 170, 140, 1400, 4),
(27, 'Lupina', 200, 'SSR', 70, 180, 110, 1200, 6),
(28, 'Akayuki', 24, 'SR', 60, 150, 95, 950, 2),
(29, 'Lahn', 28, 'SSR', 70, 175, 120, 1250, 4),
(30, 'Plitvice', 1000, 'SSR', 70, 190, 130, 1500, 2),
(31, 'Bari', 21, 'SSR', 70, 200, 100, 1100, 4),
(32, 'Nari', 22, 'SSR', 70, 185, 110, 1150, 4),
(33, 'Arabelle', 23, 'SSR', 70, 195, 105, 1100, 6),
(34, 'Bianca', 24, 'SSR', 70, 185, 110, 1150, 3),
(35, 'Gremory', 150, 'SSR', 70, 180, 120, 1200, 6),
(36, 'Marina', 27, 'SSR', 75, 170, 180, 1800, 3),
(37, 'Oghma', 999, 'SSR', 75, 160, 200, 2000, 6),
(38, 'Tinia', 22, 'SSR', 75, 200, 100, 1100, 4),
(39, 'Eugene', 25, 'SSR', 75, 190, 120, 1300, 5),
(40, 'Lapice', 21, 'SSR', 75, 185, 115, 1200, 5),
(41, 'Vishuvac', 500, 'SSR', 75, 195, 130, 1400, 2),
(42, 'Idol Eva', 25, 'SSR', 75, 170, 110, 1200, 1),
(43, 'Miya', 23, 'SSR', 75, 160, 120, 1300, 2),
(44, 'Garam', 24, 'SSR', 75, 200, 110, 1200, 3),
(45, 'Rue', 26, 'SSR', 75, 180, 130, 1350, 4),
(46, 'Veronica', 28, 'SSR', 75, 175, 140, 1400, 5),
(47, 'Lynn', 23, 'SSR', 75, 185, 120, 1250, 2),
(48, 'Noxia', 300, 'SSR', 75, 190, 110, 1200, 6),
(49, 'Future Knight', 20, 'SSR', 75, 195, 130, 1400, 1),
(50, 'Future Princess', 18, 'SSR', 75, 180, 170, 1800, 5),
(51, 'Beth', 400, 'SSR', 75, 210, 120, 1300, 6),
(52, 'Gabriel', 26, 'SSR', 75, 185, 140, 1500, 5),
(53, 'Kamael', 60, 'SSR', 75, 210, 130, 1400, 4),
(54, 'Mayreel', 19, 'SSR', 75, 195, 110, 1200, 4),
(55, 'Lucy', 24, 'SSR', 75, 180, 120, 1250, 6),
(56, 'Scintilla', 27, 'SSR', 75, 200, 115, 1300, 2),
(57, 'Orca', 22, 'SSR', 75, 195, 120, 1350, 3),
(58, 'Hana', 21, 'SSR', 75, 185, 115, 1200, 3),
(59, 'Eleanor', 25, 'SSR', 75, 170, 130, 1400, 5),
(60, 'Clara', 23, 'SSR', 75, 180, 120, 1250, 6),
(61, 'Parvati', 29, 'SSR', 75, 190, 130, 1350, 2),
(62, 'Neva', 20, 'SR', 60, 150, 100, 1000, 3),
(63, 'Sumire', 22, 'SSR', 75, 185, 110, 1200, 4),
(64, 'Rosetta', 28, 'SSR', 75, 200, 120, 1300, 6),
(65, 'Lilith', 500, 'SSR', 80, 220, 140, 1500, 6),
(66, 'Priscilla', 24, 'SSR', 80, 190, 130, 1350, 5),
(67, 'Claude', 35, 'SSR', 80, 210, 120, 1400, 6),
(68, 'Valencia', 27, 'SSR', 80, 200, 130, 1400, 2),
(69, 'Rey', 30, 'SSR', 80, 205, 135, 1450, 2),
(70, 'Crosselle', 26, 'SSR', 80, 195, 125, 1350, 5),
(71, 'Andras', 400, 'SSR', 80, 215, 120, 1400, 3),
(72, 'Pymon', 18, 'SR', 60, 140, 90, 950, 1),
(73, 'Morrian', 33, 'SSR', 80, 210, 140, 1500, 6),
(74, 'Vinette', 21, 'SSR', 80, 195, 120, 1300, 4),
(75, 'Plague Doctor', 999, 'SSR', 80, 220, 130, 1450, 6),
(76, 'Cornet', 19, 'SR', 60, 140, 95, 980, 5),
(77, 'Dohwa', 23, 'SSR', 80, 200, 120, 1350, 2),
(78, 'Callie', 22, 'SSR', 80, 190, 115, 1250, 3),
(79, 'Codename J', 28, 'SSR', 80, 210, 130, 1400, 1),
(80, 'Mk.99', 5, 'SSR', 80, 220, 150, 1600, 5),
(81, 'Mk.2', 5, 'SSR', 80, 210, 140, 1500, 5),
(82, 'Eunha', 20, 'SSR', 80, 200, 120, 1300, 4),
(83, 'KAI', 27, 'SSR', 80, 215, 135, 1450, 1),
(84, 'Beach Sohee', 18, 'SSR', 75, 185, 110, 1200, 3),
(85, 'Summer Yuze', 23, 'SSR', 75, 190, 115, 1250, 3),
(86, 'Beach Lorraine', 22, 'SSR', 75, 180, 110, 1200, 5),
(87, 'Summer Loraine', 22, 'SSR', 75, 185, 110, 1200, 3),
(88, 'Winter Carol', 21, 'SSR', 75, 180, 120, 1300, 5),
(89, 'Halloween Aoba', 21, 'SSR', 75, 175, 115, 1200, 4),
(90, 'Beach Rachel', 24, 'SSR', 75, 190, 110, 1200, 3),
(91, 'Rimuru', 37, 'SSR', 80, 220, 140, 1500, 3),
(92, 'Milim', 18, 'SSR', 80, 230, 130, 1400, 2),
(93, 'Shuna', 20, 'SSR', 80, 200, 120, 1300, 5),
(94, 'Shion', 22, 'SSR', 80, 210, 140, 1500, 6),
(95, 'White Beast', 5, 'SR', 60, 130, 100, 1000, 1),
(96, 'Knight Captain Eva', 25, 'SSR', 80, 200, 140, 1500, 1),
(97, 'Alt Knight', 20, 'SSR', 80, 210, 130, 1400, 1),
(98, 'Future Alt Knight', 20, 'SSR', 80, 220, 140, 1500, 1);

/*Insertar arma*/
INSERT INTO armas VALUES
(1,'Libera','Sword',200,300,1),
(2,'Royal Staff','Staff',120,200,2),
(3,'Heaven Blossom','Staff',170,220,3),
(4,'Justice','Staff',180,250,4),
(5,'Guardian Shield','Shield',160,400,5),
(6,'Mega Cannon','Cannon',210,200,6),
(7,'Future Goggles','Gun',200,150,7),
(8,'Nature Bow','Bow',170,200,8),
(9,'Blood Moon','Staff',190,220,9),
(10,'Sniper Rifle','Rifle',210,150,10),
(11,'Flame Crossbow','Bow',205,180,11),
(12,'Frost Bow','Bow',200,180,12),
(13,'Earth Breaker','Cannon',215,200,13),
(14,'Ice Staff','Staff',175,200,14),
(15,'Fire Staff','Staff',200,200,15),
(16,'Demon Flame','Staff',210,200,16),
(17,'Love Blade','Sword',195,200,17),
(18,'Twin Dragon','Gauntlet',200,220,18),
(19,'Twin Dragon II','Gauntlet',200,220,19),
(20,'Dark Edge','Sword',205,200,20),
(21,'Forest Hammer','Hammer',180,250,21),
(22,'Forest Hammer II','Hammer',180,250,22),
(23,'Mecha Fist','Gauntlet',210,250,23),
(24,'Titan Hammer','Hammer',220,300,24),
(25,'Shadow Blade','Sword',210,200,25),
(26,'Earth Core','Staff',240,300,26),
(27,'Nightmare Claw','Gauntlet',250,250,27),
(28,'Crimson Katana','Sword',220,200,28),
(29,'Brave Heart','Gauntlet',230,220,29),
(30,'Prominence','Sword',260,300,30),
(31,'Mayreel','Basket',250,200,31),
(32,'Fox Bead','Basket',240,200,32),
(33,'Genocide','Rifle',270,180,33),
(34,'White Snow','Sword',250,220,34),
(35,'Dark Tome','Staff',240,220,35),
(36,'Armada','Anchor',260,350,36),
(37,'Omega Blaster','Gun',260,350,37),
(38,'Sarnga','Bow',270,200,38),
(39,'Brave Rider','Sword',260,220,39),
(40,'Innocent','Sword',255,220,40),
(41,'Inferno','Sword',260,230,41),
(42,'Super Idol Mic','Staff',230,200,42),
(43,'Salamander','Staff',240,220,43),
(44,'Blue Rose','Bow',270,200,44),
(45,'Rudolph','Sword',250,240,45),
(46,'Divine Grace','Staff',240,260,46),
(47,'Dragon Fang','Sword',250,220,47),
(48,'Night Queen','Staff',260,220,48),
(49,'Future Gun','Gun',270,200,49),
(50,'Savior','Sword',260,350,50),
(51,'Dark Destroyer','Sword',280,250,51),
(52,'Heaven Justice','Staff',270,260,52),
(53,'World Tree Staff','Staff',280,260,53),
(54,'Mayreel Plush','Basket',270,200,54),
(55,'Phantom Blade','Sword',260,220,55),
(56,'Solar Flare','Sword',270,240,56),
(57,'Leviathan','Sword',260,230,57),
(58,'Spirit Staff','Staff',250,250,58),
(59,'Holy Rod','Staff',260,260,59),
(60,'Dark Violin','Staff',250,220,60),
(61,'Fire Lotus','Staff',260,230,61),
(62,'Ice Blade','Sword',220,200,62),
(63,'Storm Katana','Sword',260,220,63),
(64,'Crimson Gun','Gun',270,200,64),
(65,'Demon King Blade','Sword',290,250,65),
(66,'Royal Saber','Sword',270,230,66),
(67,'Blood Contract','Staff',280,240,67),
(68,'Solar Blade','Sword',275,230,68),
(69,'Dragon Slayer','Sword',280,240,69),
(70,'Light Bringer','Sword',270,230,70),
(71,'Ancient Spear','Spear',280,240,71),
(72,'Basic Blaster','Gun',210,180,72),
(73,'Dark Crown','Staff',285,240,73),
(74,'Magic Needle','Staff',260,220,74),
(75,'Plague Staff','Staff',290,240,75),
(76,'Light Wand','Staff',220,200,76),
(77,'Flame Fan','Fan',270,220,77),
(78,'Ocean Blade','Sword',265,220,78),
(79,'Terminator','Gun',280,230,79),
(80,'MK Blaster','Gun',290,240,80),
(81,'MK Cannon','Cannon',285,250,81),
(82,'Star Orb','Basket',270,220,82),
(83,'Hero Blade','Sword',280,230,83),
(84,'Beach Cannon','Cannon',260,220,84),
(85,'Summer Blade','Sword',265,220,85),
(86,'Beach Staff','Staff',260,220,86),
(87,'Summer Wand','Staff',260,220,87),
(88,'Winter Staff','Staff',260,230,88),
(89,'Halloween Bow','Bow',255,220,89),
(90,'Beach Rifle','Rifle',265,220,90),
(91,'Tempest Sword','Sword',290,240,91),
(92,'Dragon Knuckle','Gauntlet',300,230,92); #Se elimino parte de la información para que se pueda visualizar mejor el "RIGHT JOIN"


/*FULL JOIN: personajes + armas*/

SELECT p.nombre, a.nombre_arma
FROM personajes p
LEFT JOIN armas a
ON p.id_personaje = a.id_personaje

UNION

SELECT p.nombre, a.nombre_arma
FROM personajes p
RIGHT JOIN armas a
ON p.id_personaje = a.id_personaje;

/*
¿QUÉ HACE ESTO?

✔ Personajes con arma
✔ Personajes sin arma
✔ Armas sin personaje
*/