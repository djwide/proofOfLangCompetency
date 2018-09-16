USE cartoon_equipment;

/* #1 Write a SELECT statement that displays all fields and all records of the Products table. */
SELECT *
from products;

/* #2	Write a SELECT statement that displays only the product name field of the Products table. */
select prod_name
from products;

/* #3 	Write a SELECT statement that displays the customer id and customer name for all records in the Customers table.  */
select cust_id, cust_name
from customers;
#from products;

/* #4 	Write a SELECT statement that displays all distinct vendor id in the Products table; that is, display each different vendor id only once.  */
select distinct vend_id
from products;


/* #5 	Write a SELECT statement that displays the first 5 records in the Products table. */
select *
from products
limit 5;

/* #6  Write a SELECT statement that displays only the first record in the Products table. */
select *
from products
limit 1;

/* #7	Write a SELECT statement that displays the 6th, 7th, 8th, 9th records in the Products table. */
select *
from products
limit 5,4;

