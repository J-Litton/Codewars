
-----------------------------
--------Instructions---------
-----------------------------
/*

Overview

For this kata we will be using the DVD Rental database.

Your are working for a company that wants to reward its top 10 customers with a free gift. You have been asked to generate a simple report that returns the top 10 customers by total amount spent. Total number of payments has also been requested.

The query should output the following columns:

customer_id [int4]
email [varchar]
payments_count [int]
total_amount [float]
and has the following requirements:

only returns the 10 top customers, ordered by total amount spent
Database Schema as http://www.postgresqltutorial.com/postgresql-sample-database/

*/

SELECT 
   c.customer_id
  ,c.email
  ,count(payment_id) as payments_count
  ,SUM(CAST(amount AS float)) as total_amount
FROM customer as c
 inner join payment as p on c.customer_id = p.customer_id
group by c.customer_id, c.email
order by total_amount desc
LIMIT 10

