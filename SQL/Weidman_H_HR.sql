#Weidman x62865

drop database if exists firefight;

create database firefight;
use firefight;

drop table if exists Firehouse,
					FireFighter,
					FighterAssignedtoFireHouse,
					Pumper;

CREATE TABLE Firehouse (
houseID int,
houseName Char(10),
PRIMARY KEY (houseID)
);


CREATE TABLE Firefighter (
badgeNO int,
firstName CHAR(20),
lastName CHAR(20),
PRIMARY KEY (badgeNO)
);



CREATE TABLE FighterAssignedtoFireHouse (
badgeNO int,
houseID INT,
dateAssigned DATE,
dateDepart DATE,
PRIMARY KEY (badgeNo,houseID),
foreign key (badgeNO) references Firefighter(badgeNO)
ON DELETE CASCADE ON UPDATE CASCADE,
foreign key (houseID) references Firehouse(houseID)
ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Vehicle (
bumperNo INT,
fireHouse INT,
PRIMARY KEY (bumperNo),
foreign key (firehouse) references Firehouse(houseID)
ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Pumper (
bumperNo INT,
fireHouse INT,
gallons INT,
PRIMARY KEY (bumperNo),
foreign key (firehouse) references Firehouse(houseID)
ON DELETE CASCADE ON UPDATE CASCADE,
foreign key (bumperNo) references Vehicle(bumperNo)
ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE HookandLadder (
bumperNo INT,
fireHouse INT,
height INT,
PRIMARY KEY (bumperNo),
foreign key (firehouse) references Firehouse(houseID)
ON DELETE CASCADE ON UPDATE CASCADE,
foreign key (bumperNo) references Vehicle(bumperNo)
ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE FireCall (
callNo INT,
callType CHAR(10),
received DATETIME,
PRIMARY KEY (callNo)
);

CREATE TABLE FirehouseAssignedFire (
callNo INT,
houseID INT,
PRIMARY KEY (callNo, houseID),
foreign key (callNo) references FireCall(callNo)
ON DELETE CASCADE ON UPDATE CASCADE,
foreign key (houseID) references Firehouse(houseID)
ON DELETE CASCADE ON UPDATE CASCADE
);

Insert Into Firehouse(houseID, houseName) values
(1,"Downtown"),
(2,"Uphill"),
(3,"Valley");


Insert Into Firefighter(badgeNO, firstname, lastName) values
(0, "John", "Lennon"),
(1, "Paul", "McCartney"),
(2, "George", "Harrison"),
(3, "Ringo", "Starr");


Insert Into FighterAssignedtoFirehouse(badgeNo, houseID, dateAssigned, dateDepart) values
(0,1,'1963-01-01','1969-01-01'),
(1,1,'1963-01-01','1969-01-01'),
(2,1,'1963-01-01','1969-01-01'),
(3,1,'1963-01-01','1969-01-01'),
(0,2,'1970-01-01','1980-01-01'),
(1,3,'1970-01-01','2012-01-01'),
(2,3,'1970-01-01','2003-01-01');


Insert Into Vehicle(bumperNo, fireHouse) values
(0, 1),
(1, 1),
(2, 2),
(3, 2),
(4, 3);

Insert Into Pumper(bumperNo, fireHouse, gallons) values
(1, 1, 1000),
(3, 2, 2000);

Insert Into HookandLadder(bumperNo, fireHouse, height) values
(2, 2, 30),
(4, 3, 40);

Insert Into FireCall(callNo, callType, received) values
(0, "Forestfire",'1963-01-01 -1:01:01'),
(1, "Housefire",'1964-01-01 -1:01:01'),
(2,"EMS",'1965-01-01 01:01:01');

Insert Into FirehouseAssignedFire(callNo, houseID)values
(0,1),
(0,2),
(1,2),
(2,3);


Delimiter $$
CREATE PROCEDURE viewFireHouses ()
BEGIN
     select houseName from Firehouse;
End $$


CREATE PROCEDURE enterFighter (
	pbadgeNo INT,
	pfirstName char(20),
	plastName char(20),
	phouseID INT,
	pdateAssigned DATE,
	pdateDepart DATE
)
BEGIN
     INSERT INTO Firefighter(badgeNO,firstname,lastname)
     VALUES(pbadgeNO,pfirstname,plastname);

	Insert Into FighterAssignedtoFirehouse(badgeNo, houseID, dateAssigned, dateDepart)
	VALUES(pbadgeNo, phouseID, pdateAssigned, pdateDepart);
End $$

CREATE PROCEDURE assignStation (
	pcallNo INT,
	phouseID INT
)
BEGIN
     Insert Into FirehouseAssignedFire(callNo, houseID) values
	(pcallNo, phouseID);
End $$

CREATE PROCEDURE viewVehicles (
	pfirehouse INT
)
BEGIN
    select bumperNo from Vehicle
	where firehouse= pfirehouse;
END $$


CREATE PROCEDURE viewFireFighters (
	phouseID INT,
	date Date
)
BEGIN
    select badgeNo from FighterAssignedtoFirehouse
	where phouseID= houseID and
		dateDepart>date and date > dateAssigned ;
END $$

delimiter ;

drop user oOfficer, chief;

create user oOfficer identified by 'oOfficer';

create user chief identified by 'chief';

grant execute on procedure viewFireHouses to oOfficer, chief;
grant execute on procedure viewVehicles to oOfficer, chief;
grant execute on procedure viewFireFighters to oOfficer, chief;
grant execute on procedure enterFighter to oOfficer;
grant execute on procedure assignStation to oOfficer;

