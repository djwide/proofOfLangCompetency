USE golfclub;

/* #1  Write a SELECT statement that displays the member identifier, last name and 
first name of all members. Order this by last name and then by first name. (20 rows) */
select memberid, lastname, firstname
from member
order by lastname, firstname;

/* #2  Write a SELECT statement that displays the member identifier, last name, first 
name and coach identifier for all members who have a coach. Order by coach, then last name. (10 rows)*/
select memberid, lastname, firstname, coach
from member
where coach is not null
order by coach,lastname;

/* #3  Write a SELECT statement that displays the member identifier and team for all members who are on a team. */
select memberid, team
from member
where team is not null;

/* #4  Write a SELECT statement that shows the number of members who have a coach. (Result is 10).*/
select count(coach)
from member;

/* #5  Write a SELECT statement that shows the number of members of each gender. */
select gender, count(*) as genCount
from member
group by gender;

/* #6  Write a SELECT statement that shows the member identifier and count of members being coached by
 a coach and also show the number of members who are not coached. */
select memberid, coach, count(*) as coachCount
from member
group by coach;

/* #7  Write a SELECT statement that shows the coach member identifier and the number of members 
coached by that coach.  Do not include a category for members without a coach.*/
select coach, count(*) as cC
from member
group by coach
having coach is not null;

/* #8  Write a SELECT statement that displays how many members are on each team. */
select team, count(*)
from member
group by team;

/* #9  Write a SELECT statement that displays the average handicap for each team. */
select sum(handicap)/count(handicap) as ave
from member;

/* #10  Write a SELECT statement that displays the number of tournaments for each of the tournament types. Put this in increasing order. */
select tourtype, count(*)
from tournament
group by tourtype
order by count(*);

/* #11  Write a SELECT statement that displays the number of members of each member type, the number of members of each type 
who have a handicap and the average handicap of each of type. Order this by decreasing average handicap. */
select membertype, count(*)
from member
group by membertype;
#having handicap is not null;

 /* #12  Write a SELECT statement that shows which member types have at least five members; include total number of members 
 and list them in decreasing order of the number of members. */


/* #13  Write a SELECT statement that shows all years where the average handicap for members who joined that year is under 19. */
select joinDate, avg(handicap) as handicapAve
from member
group by year(joinDate)
having handicapAve <19.0;

/* #14  Write a SELECT statement that shows the year and tournament ID for those tournaments in which the number of entrants 
is at least 2. Order by year and then tourID. (9 rows). */
select tourid, year, count(*) as num
from entry
group by tourid
#having num >2;

