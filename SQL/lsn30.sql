DROP DATABASE IF EXISTS golfclub;
CREATE DATABASE golfclub;
USE golfclub;

SET SQL_SAFE_UPDATES=0;

CREATE TABLE Tournament(
   tourID INT PRIMARY KEY,
   tourName VARCHAR(20),
   tourType VARCHAR(20)
   );

CREATE TABLE Type(
   type VARCHAR(20) PRIMARY KEY,
   fee INT
   );

CREATE TABLE Member(
   memberID INT PRIMARY KEY,
   lastName VARCHAR(20),
   firstName VARCHAR(20),
   memberType VARCHAR(20),
   phone VARCHAR(20),
   handicap INT,
   joinDate DATETIME,
   coach INT,
   team VARCHAR(20),
   gender VARCHAR(1),
   FOREIGN KEY (coach) REFERENCES Member(memberID)
   ON DELETE RESTRICT ON UPDATE CASCADE,
   FOREIGN KEY (memberType) REFERENCES type(type)
   ON DELETE RESTRICT ON UPDATE CASCADE
   );

CREATE TABLE team(
   teamName VARCHAR(20) PRIMARY KEY,
   practiceNight VARCHAR(20),
   manager INT,
   FOREIGN KEY (manager) REFERENCES Member (memberID)
   ON DELETE RESTRICT ON UPDATE CASCADE
   );

ALTER TABLE Member
ADD FOREIGN KEY (team) REFERENCES team(teamName);
   
CREATE TABLE Entry(
   memberID INT,
   tourID INT,
   year INT,
   PRIMARY KEY (memberID, tourID, Year),
   FOREIGN KEY(memberID) REFERENCES member (memberID)
   ON DELETE CASCADE ON UPDATE CASCADE,
   FOREIGN KEY(tourID) REFERENCES tournament (tourID)
   ON DELETE RESTRICT ON UPDATE CASCADE
   );

INSERT INTO Type( type,fee ) VALUES ('Junior',150);
INSERT INTO Type( type,fee ) VALUES ('Senior',300);
INSERT INTO Type( type,fee ) VALUES ('Social',50);

INSERT INTO Tournament( tourID,tourName,tourType ) VALUES (24,'Leeston','Social');
INSERT INTO Tournament( tourID,tourName,tourType ) VALUES (25,'Kaiapoi','Social');
INSERT INTO Tournament( tourID,tourName,tourType ) VALUES (36,'WestCoast','Open');
INSERT INTO Tournament( tourID,tourName,tourType ) VALUES (38,'Canterbury','Open');
INSERT INTO Tournament( tourID,tourName,tourType ) VALUES (40,'Otago','Open');

INSERT INTO team( teamName,practiceNight,manager ) VALUES ('TeamA','Tuesday', null);
INSERT INTO team( teamName,practiceNight,manager ) VALUES ('TeamB','Monday', null);

INSERT INTO Member( memberID,lastName,firstName,memberType,phone,handicap,joinDate,coach,team,gender ) VALUES 
(118,'McKenzie','Melissa','Junior','963270',30,null,null,null,'F'),
(138,'Stone','Michael','Senior','983223',30,null,null,null,'M'),
(153,'Nolan','Brenda','Senior','442649',11,null,null,'TeamB','F'),
(176,'Branch','Helen','Social','589419',null,null,null,null,'F'),
(178,'Beck','Sarah','Social','226596',null,null,null,null,'F'),
(228,'Burton','Sandra','Junior','244493',26,null,null,null,'F'),
(235,'Cooper','William','Senior','722954',14,null,null,'TeamB','M'),
(239,'Spence','Thomas','Senior','697720',10,null,null,null,'M'),
(258,'Olson','Barbara','Senior','370186',16,null,null,null,'F'),
(286,'Pollard','Robert','Junior','617681',19,null,null,'TeamB','M'),
(290,'Sexton ','Thomas','Senior','268936',26,null,null,null,'M'),
(323,'Wilcox','Daniel','Senior','665393',3,null,null,'TeamA','M'),
(331,'Schmidt','Thomas','Senior','867492',25,null,null,null,'M'),
(332,'Bridges','Deborah','Senior','279087',12,null,null,null,'F'),
(339,'Young','Betty','Senior','507813',21,null,null,'TeamB','F'),
(414,'Gilmore','Jane','Junior','459558',5,null,null,'TeamA','F'),
(415,'Taylor','William','Senior','137353',7,null,null,'TeamA','M'),
(461,'Reed','Robert','Senior','994664',3,null,null,'TeamA','M'),
(469,'Willis','Carolyn','Junior','688378',29,null,null,null,'F'),
(487,'Kent','Susan','Social','707217',null,null,null,null,'F');

UPDATE Member SET joinDate = '2008-08-08' WHERE memberID = 118;
UPDATE Member SET joinDate = '2009-06-06' WHERE memberID = 138;
UPDATE Member SET joinDate = '2009-04-27' WHERE memberID = 153;
UPDATE Member SET joinDate = '2009-02-02' WHERE memberID = 176;
UPDATE Member SET joinDate = '2008-01-01' WHERE memberID = 178;
UPDATE Member SET joinDate = '2008-03-22' WHERE memberID = 228;
UPDATE Member SET joinDate = '2008-05-13' WHERE memberID = 235;
UPDATE Member SET joinDate = '2010-07-08' WHERE memberID = 239;
UPDATE Member SET joinDate = '2009-11-08' WHERE memberID = 258;
UPDATE Member SET joinDate = '2008-09-12' WHERE memberID = 286;
UPDATE Member SET joinDate = '2007-08-14' WHERE memberID = 290;
UPDATE Member SET joinDate = '2008-06-08' WHERE memberID = 323;
UPDATE Member SET joinDate = '2008-01-18' WHERE memberID = 331;
UPDATE Member SET joinDate = '2008-12-09' WHERE memberID = 332;
UPDATE Member SET joinDate = '2009-10-17' WHERE memberID = 339;
UPDATE Member SET joinDate = '2007-08-08' WHERE memberID = 414;
UPDATE Member SET joinDate = '2008-06-28' WHERE memberID = 415;
UPDATE Member SET joinDate = '2008-05-11' WHERE memberID = 461;
UPDATE Member SET joinDate = '2008-03-08' WHERE memberID = 469;
UPDATE Member SET joinDate = '2008-01-28' WHERE memberID = 487;

INSERT INTO Entry( memberID,tourID,year ) VALUES 
(118,24,2005),(228,24,2006),(228,25,2006),(228,36,2006),(235,38,2004),(235,38,2006),(235,40,2005),
(235,40,2006),(239,25,2006),(239,40,2004),(258,24,2005),(258,38,2005),(286,24,2004),(286,24,2005),
(286,24,2006),(415,24,2006),(415,25,2004),(415,36,2005),(415,36,2006),(415,38,2004),(415,38,2006),
(415,40,2004),(415,40,2005),(415,40,2006);

Update team Set manager = 239 where teamName = 'TeamA';
Update team Set manager = 323 where teamName = 'TeamB';

Update Member Set coach = 153 where memberID = 118;
Update Member Set coach = 153 where memberID = 228;
Update Member Set coach = 153 where memberID = 235;
Update Member Set coach = 235 where memberID = 286;
Update Member Set coach = 235 where memberID = 290;
Update Member Set coach = 153 where memberID = 331;
Update Member Set coach = 235 where memberID = 332;
Update Member Set coach = 153 where memberID = 414;
Update Member Set coach = 235 where memberID = 415;
Update Member Set coach = 235 where memberID = 461;
