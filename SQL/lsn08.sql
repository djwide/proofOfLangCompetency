USE golfclub;

/*1*/
/*Write a SELECT statement that displays tournament name and years conducted for all tournaments,
 ordered first by tournament name and then by year. 
(Explain why duplicate rows occur and then eliminate them. There are 13 distinct rows.)*/
select distinct tourname, year 
from entry, tournament
where entry.tourid= tournament.tourid;

/*Write a SELECT statement that shows the member last name and 
membership fee for all members, sorted by last name. (20 rows)*/
select lastname, fee
from member,type
where member.membertype= type.type;

/*3*/
/*Write a SELECT statement that shows each member’s ID and last name
 and their practice night, ordered by last name. (8 rows)*/
select memberid, lastname, practicenight
from member,team
where member.team= team.teamName;
/*4*/
/*Write a SELECT statement that lists all open tournaments and years
 that members have entered.  Order by tournament name and year.  (Explain
 why duplicate rows occur and then eliminate them.  There should be 8 distinct rows.)*/
select * from tournament;
/*5*/
/*Write a SELECT statement that shows how many members practice on Tuesday. (4 rows)*/

/*6*/
/*Write a SELECT statement that shows how many members practice
 on Tuesday; also, show their average handicap.   ( 4,4.5 )*/

/*7*/
/*The type table has a fee field that is the annual fee paid by member
 depending on their membership type.  Write a SELECT statement that displays
 the annual income of the golf club from member fees? (Result: $4500)*/

/*8*/
/*Write a SELECT statement that displays how many members practice
 on each night?  Order this by night.*/
select practiceNight, count(*)
from member, team
where member.team= team.teamName
group by practiceNight;
/*9*/
/*Write a SELECT statement that displays how many members have
 entered each type of tournament.  Order this by tournament type. */
select tourtype, count(*)
from tournament, entry
where tournament.tourid= entry.tourid
group by tourtype;

/*10*/
/*Assuming that each member’s annual fee is due in the month they joined the golf club,
 write a SELECT statement that displays the club’s monthly income from member fees? */
select sum(Fee)
from member, type
where member.membertype= type.type;

/*11*/
/*Using the golf club database, write a SQL query that lists the member ID,
 last name, tournament year and tournament name of all members for teamA
 who entered either the Canterbury tournament or the Otago tournament. (5 records) */
select member.memberID, lastname, year, tourname, team
from member, entry, tournament, team
where member.memberid= entry.memberid and entry.tourid= tournament.tourid and team.teamname= member.team and member.team = 'teamA' and (tourname = 'Canterbury' or tourname = 'Otago');


/*12*/
/*12.	Write a SQL query that lists all tournament types that have had
 more than 5 members enter tournaments of that type in a given year.
  List the tournament type and year. */


select * from team



