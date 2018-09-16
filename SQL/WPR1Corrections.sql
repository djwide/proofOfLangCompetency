use navyassignment;
### Use proper name on file or face big point loss
### Total  185

/* Q1.  Show a list of the rank, title and paygrade of those
ranks that no crewmember in this database hold.  Order by the rank. */
select *
from navyRanks as n
where rank not in (select rank 
					from crewmember)
order by rank;

### Could use outer join
### 25

/* Q2.  Return a count of crewmembers, broken down by paygrade, assigned to 		# I made the two changes and the query now matches the example
each homeport. Do not include any returns of blank homeports. (Hint:  a blank 
homeport would also be considered " "). */
select homeport, n.paygrade, count(*)
from crewmember as c, crewmemberassignedtoship as ca, ship as s, navyRanks as n
where c.idnumber= ca.idnumber 
and ca.hullnumber=s.hullnumber
and n.rank= c.rank
and homeport != " "
group by homeport, n.paygrade;


### homeport != "space" 
### group by homeport and paygrade
### 21 / 25

/* Q3.  Show the number of ships from each homeport that is located in Virginia. 
(Hint: If a ships homeport is in Virginia it will have the initials VA as 
part of their homeport name). Display the count followed by the homeport name.*/
select count(*) as "Count", homeport
from ship
where homeport like '%VA%'
group by homeport;

### 25

/* Q4.  Create new email addresses for each crewmember assigned to a ship with a homeport in Norfolk, VA
or Groton, CT by joining their first initial to their last name with a period in between, then have the name 
of their homeport and .navy.mil at the end (example: victor.constant@norfolk.navy.mil) Order the result by
lastname. (hint -> look at: http://technet.microsoft.com/en-us/library/ms187748.aspx). */
select concat(firstname, ".", lastname, "@", left(homeport,length(homeport)-2), ".navy.mil") as "email"
from crewmemberassignedtoship as ca, ship as s, crewmember as c
where c.idNumber = ca.idNumber and ca.hullnumber= s.hullnumber and (s.homeport = "NorfolkVA" or s.homeport = "GrotonCT")
order by lastname;

### 25

/* Q5.  Return the average number of days each crewmember spent on a 			# I was originally confused due to discrepancies between sql and mySql syntax.  It now matches the example query given
given ship.  Order by the shortest to longest average stay. Display the
number of days as an integer. (Hint:  http://www.w3schools.com/sql/func_datediff.asp).*/
select s.name, floor(avg(datediff(date(detachmentDate), date(reportDate)))) as "Avg time aboard, days"
from crewmember as c, crewmemberassignedtoship as ca, ship as s
where c.idNumber= ca.idNumber
and s.hullnumber = ca.hullNumber
group by s.name
order by avg(datediff(date(detachmentDate), date(reportDate)));

### syntax error with hull number in where clause
### need to join with ship table
### 19/25

/* Q6.  Write a select statement that returns a ship type and a 			# I changed the count parameter, the query does not match the example given but it seems to 
count of the number of people assigned to each type. */						# make sense in the context of the instructions.  The discrepancy I assume are typos or a misunderstanding of what
																			# the question is asking rather than ability to execute it.  It double counts some idNumbers but depending on what the user means 
select type, count(idNumber)												# number assigned this could make sense
from crewmemberassignedtoship as ca, ship as s
where s.hullnumber = ca.hullnumber
group by type
order by count(idNumber)desc;

### order by count(idnumber)
### 20 / 25

/* Q7.  Display sailors who completed a qual card in June of 2009, as well as his 
or her supervisor.  Return the sailor's rank and last name as a single field and the supervisor and rank as another field. 
Put list into alphabetical order by sailor last name and only return each sailor once.*/
select concat(c1.rank, " ", c1.lastname), concat(c2.rank, " ", c2.lastname) as supervisor
from sailorcompletesQualCard as sc, sailor as s, crewmember as c1, crewmember as c2
where sc.idNumber = s.idNumber
and c1.idNumber = s.idNumber
and c1.supervisor= c2.idNumber
and month(completionDate)= 06 and year(completionDate) = 2009
order by c1.lastname;

### 25

/* Q8.  Display all ships that have a displacement less than the USS Gridley. 
Show the ship name, ship type, displacement and homeport of each ship. Order
by the greatest displacement to the least. */
select name, type, displacement, homeport
from ship
where displacement < (select displacement
						from ship 
						where name = "USS Gridley")
order by displacement desc;

### 25