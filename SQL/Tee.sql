-- SQL example for coursework demonstration only.
-- Not for production use.

#Weidman x62865

drop database if exists firefight;

create database firefight;
use firefight;

drop table if exists Firehouse,
					FireFighter,
					FighterAssignedFireHouse,
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



CREATE TABLE FighterAssignedFireHouse (
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
(0,2,'1970-02-28','1980-01-01'),
(1,3,'1970-02-28','2012-02-28'),
(2,3,'1970-02-28','2012-02-28');

select * from Firefighter;
/*





Delimiter $$
CREATE PROCEDURE addUser (
	pPword char(20), 
	planguage char(10),
	pName char(20)
)
BEGIN
     INSERT INTO user(Pword,language,name)
     VALUES(pPword,planguage, pName);
End $$

CREATE PROCEDURE addCity (
	pcountry char(15),
	pcontinent char(10),
	planguage char(10),
	pcityName char(15)
)
BEGIN
     INSERT INTO city(country,continent,language,cityName)
     VALUES(pcountry,pcontinent,planguage,pcityName);
End $$


CREATE PROCEDURE addCouch (
	pcityCode int, 
	pnumCouches int(11), 
	pcouchRating decimal(10,0),
	paddress char(20)
)
BEGIN
     INSERT INTO city(cityCode,numCouches,couchRating,address)
     VALUES(pcityCode,pnumCouches,pcouchRating,paddress);

END $$


CREATE PROCEDURE writeReview (
	puserIDOn int,
	puserIDSub int,
	pRating decimal(10,0),
	pcouchID int
)
BEGIN
     INSERT INTO reviews(userIDOn,userIDSub,Rating,couchID)
     VALUES(puserIDOn,puserIDSub,pRating,phouseID);
END $$



CREATE PROCEDURE viewUser (
	puserID int
)
BEGIN
    if(puserID in (select userIDOn from reviews))
	then select language, name, rating
		from user, reviews
		where user.userID= puserID 
		and  user.userID= reviews.userIDOn;
	else select language, name
		from user
		where user.userID= puserID ;
	end if;
END $$

CREATE PROCEDURE viewCouch (
	pHouseID int
)
BEGIN
    select numCouches as 'Number of Couches',
	couchRating,
	address,
	user.name as 'OwnerName',
	city.cityName as 'city'
	from couch, reviews, host, user, city 
	where pHouseID= couch.houseID
	and couch.houseID= reviews.couchID
	and couch.houseID= host.houseIDOwned
	and host.userID= user.UserID
	and city.cityCode= couch.cityCode;

END $$

CREATE PROCEDURE logASurf (
	puserIDStay int,
	pHouseID int,
	pdate date
)
BEGIN
     INSERT INTO userStayed(userID,HouseIDStayed,dateOfStay)
     VALUES(puserIDStay,pHouseID,pdate);
END $$

CREATE PROCEDURE updateUser (
	puserID int,
	pPword char(20), 
	planguage char(10),
	pName char(20)
)
BEGIN
	UPDATE user SET pword = pPword, 
					language= planguage,
					name=pname
	where userID= pUserID ;
End $$


CREATE PROCEDURE updateCity (
	pcityCode int,
	pcountry char(15), 
	pcontinent Char(10),
	planguage char(10),
	pcityName char(15)
)
BEGIN
	UPDATE city SET country = pcountry, 
					language= planguage,
					continent=pcontinent,
					cityName= pcityName
	where cityCode= pcityCode ;
End $$


CREATE PROCEDURE updateCouch (
	phouseID int,
	pCityCode int, 
	pnumCouches int,
	pcouchRating decimal,
	pAddress CHAR(20)
)
BEGIN
	UPDATE couch SET CityCode = pCityCode, 
					numCouches = pNumCouches,
					couchRating =pcouchRating,
					Address= paddress
	where phouseID= houseID ;
End $$


delimiter ;

drop user siteAdmin, surfer, host, anyone;

create User siteAdmin identified by 'siteadmin';
grant execute on procedure addCity to siteAdmin;
grant execute on procedure updateCity to siteAdmin;

create user surfer identified by 'surfer';
create user host identified by 'host';

grant execute on procedure logASurf to surfer;
grant execute on procedure updateUser to surfer, host;
grant execute on procedure addUser to surfer, host;
grant execute on procedure writeReview to surfer, host;
grant execute on procedure addCouch to host;
grant execute on procedure updateCouch to host;

create user anyone identified by 'anyone';
grant execute on procedure viewCouch to anyone;
grant execute on procedure viewUser to anyone;
*/