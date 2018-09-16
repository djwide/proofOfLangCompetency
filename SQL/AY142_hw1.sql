use publishing;

/* Q1.  Display each customer's last and first names, credit card number last 4,
but with the first 12 values replaced with an asterisk, and credit card expiration 
date.  Field name should read "Credit Card last Four" order by date of card 
expiration, descending order. Format output to look like that given in the 
assignment document.*/
select name as"Last Name", firstname as "First Name", concat('***********',subString(creditCardNumber,13,16))as "Credit Card last Four", creditCardExpiration as "Card Expiration Date"
from customer as c, entity as e
where c.customerID = e.idNumber
order by creditCardExpiration desc;
/* Q2.  Display the names of categories that have no books published in the
category.  The field name should read "Categories with no books published.
Order by the name of the category, ascending.*/
select name as "Categories with no books published"
from category
where name not in (select name
					from categorydescribesbook, category
					where categoryName = name or categoryName is null);


/* Q3.  Show the printer name as "Printer Name" and the total number
of books the printer has contracted and actually delivered.  Display the 
sum of the books they have contracted as "Sum of Books Contracted/Delivered"
and order by the most to least number books contracted and published.*/

select name as "Printer Name",  sum(quantity) as "Sum of Books Contracted/Delivered"
from printercontractsbook as p, entity, book as b
where printerID = idNumber and p.isbn= b.isbn and deliverDate is not null
group by printerID
order by sum(quantity) desc;

/* Q4.  Display the last name, first name, customer ID and the total number of books
ever ordered by each customer who has ordered more than just one book.  Order
by the total number of books they have purchased, with the customer purchasing the
most shown first.*/
select name as "Last Name", firstName as "First Name", customerID as "Customer ID", sum(quantity) as "Total Number Books Purchased"
from entity,customerbuysbook
where customerID= idNumber
group by idNumber
having sum(quantity) >1
order by sum(quantity) desc;


/* Q5.  Display the months when the most orders are placed and how many
total books are ordered in those months (return only those months where
at least one book was ordered).  Only display the month in written form 
(like June or August) and order by the number of books ordered by a 
customer in each of those months, most to least. */
select monthname(orderdate) as "Month", sum(quantity) as "Total books ordered in month"
from customerbuysbook
group by monthname(orderdate)
having sum(quantity) >1
order by sum(quantity) desc;
# I found monthname() function on stackoverflow

/* Q6.  Write a SQL query that shows the customer last name, first name, and credit card
expiration date for those customers whose credit card will expire between the date 
the query is run and 1 year from then.  Do not hard-code it.  The answer should not 
depend on when the query is run.  Show the cards that expire first at the top of the
list.  (return varies by date run). */
select name as "Last Name", firstname as "First Name", creditCardExpiration as "Card Exp Date"
from customer, entity
where customerId= idNumber and creditCardExpiration between CurDate() and date_add(curdate(), interval 1 year)
order by creditCardExpiration;

/* Q7.  What is the most expensive book, least expensive book, and average book price for all
books printed by the printer "Jostens." Append the $ to each price and be sure to format your
output to only 2 significant digits, as needed.*/
select name as "Printer", concat("$", max(retailprice)) as "Max Price", concat("$",min(retailPrice)) as "Min Price", concat("$",format(avg(retailPrice),2)) as "Average Price"#p.isbn, retailprice, idNumber, entity.name#max(retailPrice), min(retailPrice), avg(retailPrice)
from printercontractsbook as p, book as b, entity
where p.isbn = b.isbn and printerID= idNumber and name = "Jostens";


/* Q8.  New policy is that all customer passwords must be longer than
eight characters in length.  Display the last name, first name, and 
email address of those customers who do not fit this requirement so they
can be emailed about the requirement change.  Order by last name, then
first name.*/
select name as "Last Name", firstName as "First Name", email as "Email Address"
from customer, entity
where length(password) <9 and idNumber= customerID
order by name, firstname;

/* Q9. Generate possible new email addresses for your customers by taking their
current username and appending it to @booksrus.com.  Order by username.*/
select concat(username, "@booksrus.com")
from customer
order by username;
/* Q10.  List the names of the publishers (without duplication) who have published a 
book both in the first half of the 20th century (1901-1950) and the second half
(1951-2000). */
select name
from entity, book as b1, book as b2 
where idNumber= b1.publisherID and b1.yearOfPublication between 1901 and 1950 and b2.yearOfPublication between 1951 and 2000 and b1.publisherID= b2.publisherID
group by name;
