#                              __
# .--------.--.--.-----.-----.|  |
# |        |  |  |__ --|  _  ||  |
# |__|__|__|___  |_____|__   ||__|
#          |_____|        |__|
#
# MySQL DML Exercises 3/20 - The WHERE Clause

# Write a query to retrieve films longer than 3 hours.
# Include only the following columns: Title, Description, Rating, Movie Length

select title, description, rating, length
from film
where length >= 180;

# Write a query to retrieve all payments made on or after 05/27/2005.
# Include only the following columns: Payment ID, Amount, Payment Date

select payment_id, amount, payment_date
from payment
where payment_date >= '2005-05-27';