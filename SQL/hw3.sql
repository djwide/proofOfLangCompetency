#Weidman x62865

drop database if exists couchsurf;

create database couchsurf;
use couchsurf;

#drop table if exists user;

CREATE TABLE User (
UserID int not null auto_increment,
Pword CHAR(20),
language CHAR(10),
name CHAR(20),
PRIMARY KEY (UserID)
);


CREATE TABLE Couch (
houseID int not null auto_increment,
cityCode int,
numCouches Int,
couchRating Decimal,
address CHAR(20),
PRIMARY KEY (houseID)
);



CREATE TABLE Reviews (
reviewID int not null auto_increment,
userIDOn int,
userIDSub int,
Rating Decimal,
couchID int,
PRIMARY KEY (reviewID),
foreign key (couchID) references Couch(houseID),
foreign key (userIDOn) references User(UserID)
ON DELETE CASCADE ON UPDATE CASCADE,
foreign key (userIDSub) references User(UserID)
ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE City (
cityCode int not null auto_increment,
country CHAR(15),
continent CHAR(10),
language CHAR(10),
cityName CHAR(15),
PRIMARY KEY (cityCode)
);

CREATE TABLE UserCityLang (
UserID int,
CityCode int ,
Language Char(10),
primary key(UserID, CityCode),
foreign key (UserID) references User(UserID)
ON DELETE CASCADE ON UPDATE CASCADE,
foreign key (CityCode) references City(cityCode)
ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE UserStayed (
UserID int,
houseIDStayed int ,
dateOfStay date,
primary key(UserID, houseIDStayed),
foreign key (UserID) references User(UserID)
ON DELETE CASCADE ON UPDATE CASCADE,
foreign key (houseIDStayed) references Couch(houseID)
ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Host (
UserID int,
houseIDOwned int,
primary key(UserID, houseIDOwned),
foreign key (UserID) references User(UserID)
ON DELETE CASCADE ON UPDATE CASCADE,
foreign key (houseIDOwned) references Couch(houseID)
ON DELETE CASCADE ON UPDATE CASCADE
);

ALTER TABLE Couch
Add foreign key (cityCode) references City(cityCode)
ON DELETE CASCADE ON UPDATE CASCADE;



Insert Into User(pword, language, name) values
('password','english', 'John Johnson'),
('12345','english', 'Barack Obama'),
('23456','spanish', 'Franz Schubert'),
('mrmarbles','tagalog', 'Sir Paul McCartney'),
('bonjour','french', 'Me');


Insert Into City(country, continent, language, cityName) values
('USA','N America','english','New York'),
('USA','N America','english','Los Angeles'),
('UK','Europe','english','London'),
('France','Europe','french','Paris'),
('Spain','Europe','Spanish','Madrid');


Insert Into Couch(cityCode, numCouches, couchRating, address) values
(1,1,8.5,'abc way'),
(2,2,7.9, 'bcd street'),
(3,3,9.3, 'def lane');



Insert Into Host(UserID, houseIDOwned) values
(1,1),
(2,2),
(3,3);


Insert Into UserCityLang(UserID, cityCode, Language) values
(1,1,'english'),
(5,4, 'french'),
(3,5, 'spanish');


Insert Into UserStayed(UserID, houseIDStayed, dateOfStay) values
(1,2,'2012-02-28'),
(5,3, '2012-10-27'),
(3,1, '2012-09-12');


Insert Into Reviews(UserIDOn, UserIDSub, Rating, CouchID) values
(4,1,8.5,null),
(null,1,9.9, 2),
(3,1,8.8,null);





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