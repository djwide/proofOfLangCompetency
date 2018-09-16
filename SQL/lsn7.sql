USE golfclub;

/*1. Write a SQL query to display the distinct member IDs of golfers who have 
played in an open tournament */
/*select tourid
from tournament
where tourtype like 'open';	
*/
select distinct memberid, tourid
from entry
where tourid in (select tourid
				from tournament
				where tourtype like 'open');



/*2. Write a SQL query to display the number of Junior golfers who have played in
an open tournament*/

select distinct memberid, tourid
from entry
where tourid in (select tourid
				from tournament
				where tourtype like 'open')
		and memberid in 
				(select memberid
				from member
				where membertype= 'junior');



/* 3. Write a SQL query that lists the last name and first name of all members
 who entered either the Canterbury tournament or the Otago tournament
 and also play on a team. (2 records)*/
select *
from member
where memberid in(select memberid
				from entry
				where tourid = '38' or tourid='40');

/* 4. Write a SQL query to display the average handicap for those who have
 entered an Open tournament*/
select sum(Handicap)/count(*)
from member
where memberid in(select distinct memberid
				from entry
				where tourid in (select tourid
							from tournament
							where tourtype = 'open'));

/* 5. Write a SQL query that lists the last name and first name of the
manager with the lowest handicap.*/
select min(Handicap), lastname, firstname
from member
where memberid in(select manager
					from team);

/*6. Write a SQL query that lists the member ID, last name, first name and handicap
 of all members whose handicap is below the average handicap of all members.
Order by handicap then alphabetical by last name.*/


/*7. Write a SQL query that displays the names and handicaps of all members
 whose handicap is within 5 of the highest member handicap.  
 Order by handicap from high to low.*/


/*8. Write a SQL query to display the name of the best junior who is not on a team*/


/* 9. Write a SQL query to display the night when the most women team members practice*/

		
/* 10. Write a SQL query to display the memberID and tournament count of the member
who has played in the most tournaments*/


/*11. Write a SQL query to display the names of each member along with the
 number of tournaments that each member has played, sorted by last name.*/

select LastName
from member
where memberid in(select memberid
			from entry);

 select count(*)
			from entry
			group by memberid