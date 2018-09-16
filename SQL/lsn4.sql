use publishing;

/* Q1.  Display each customer's last and first names, credit card number last 4, 
but with the first 12 values replaced with an asterisk, and credit card expiration 
date.  Field name should read "Credit Card last Four" order by date of card 
expiration, descending order. Format output to look like that given in the 
assignment document.*/
select name, firstname, concat('***********',subString(creditCardNumber,13,16))as "Credit Card last Four"
from customer as c, entity as e
where c.customerID = e.idNumber
order by creditCardExpiration desc;
/* Q2.  Display the names of categories that have no books published in the
category.  The field name should read "Categories with no books published.
Order by the name of the category, ascending.*/
select name#categoryName
from category
where name not in  (select name
					from categorydescribesbook, category
					where categoryName = name);


/* Q3.  Show the printer name as "Printer Name" and the total number
of books the printer has contracted and actually delivered.  Display the 
sum of the books they have contracted as "Sum of Books Contracted/Delivered"
and order by the most to least number books contracted and published.*/
#select *#printerID, idNumber 
#from printercontractsbook as p, printer, entity as e, book as b
#where e.printerID = idNumber and b.isbn= p.isbn;
select * 
from printercontractsbook as p, entity, book as b
where printerID = idNumber and p.isbn= b.isbn;
/* Q4.  Display the last name, first name, customer ID and the total number of books------------
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
select month(orderdate), sum(quantity)
from customerbuysbook
group by month(orderdate)
having sum(quantity) >1
order by sum(quantity) desc;


/* Q6.  Write a SQL query that shows the customer last name, first name, and credit card-----
expiration date for those customers whose credit card will expire between the date 
the query is run and 1 year from then.  Do not hard-code it.  The answer should not 
depend on when the query is run.  Show the cards that expire first at the top of the
list.  (return varies by date run). */
select name as "Last Name", firstname as "First Name", creditCardExpiration as "Card Exp Date"
from customer, entity
where customerId= idNumber and creditCardExpiration between CurDate() and date_add(curdate(), interval 1 year)
order by creditCardExpiration;

/* Q7.  What is the most expensive book, least expensive book, and average book price for all 
books published by the publisher "Jostens." Append the $ to each price and be sure to format your
output to only 2 significant digits, as needed.*/
select *#max(retailPrice), min(retailPrice), avg(retailPrice)
from book;#book, printer
#where publisherID = find Jostens
#where subquert;

/* Q8.  New policy is that all customer passwords must be longer than
eight characters in length.  Display the last name, first name, and 
email address of those customers who do not fit this requirement so they
can be emailed about the requirement change.  Order by last name, then
first name.*/
select customerID, password, name, firstName, email
from customer, entity
where length(password) <9 and idNumber= customerID;

/* Q9. Generate possible new email addresses for your customers by taking their
current username and appending it to @booksrus.com.  Order by username.*/
select email, username
from entity, customer
where idNumber= customerID;
/* Q10.  List the names of the publishers (without duplication) who have published a 
book both in the first half of the 20th century (1901-1950) and the second half
(1951-2000). */
select *
from entity
where name = jostens;
