#                              __ 
# .--------.--.--.-----.-----.|  |
# |        |  |  |__ --|  _  ||  |
# |__|__|__|___  |_____|__   ||__|
#          |_____|        |__|    
#                                 
# MySQL DML Exercises 5/20 - The OR Operator

# Write a query to retrieve all customers that are either members at store number 1, 
# or have a last name that begins with the letter D.
# Include all columns.

select *
from customer
where store_id = 1 or left(last_name, 1) = 'D';


# Write a query to retrieve all categories where the primary key is greater than 4 and the name begins with either C, S or T.
# Include all columns.
select *
from category
where category_id > 4 and (left(name,1)='C' or left(name,1)='S' or left(name,1)= 'T');