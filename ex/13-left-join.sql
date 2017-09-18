#                              __
# .--------.--.--.-----.-----.|  |
# |        |  |  |__ --|  _  ||  |
# |__|__|__|___  |_____|__   ||__|
#          |_____|        |__|
#
# MySQL DML Exercises 13/20 - The LEFT JOIN

# Write a query to select all payments made by active customers, ordered by payment date.
# Include the following columns: Customer Full Name (as customer_name), Payment Date, Amount, Active (as customer_active)
# You will need to perform a LEFT JOIN on the Customer table to get the customer name, and query on the active field.
select concat(customer.first_name, ' ', customer.last_name) as customer_name, payment.payment_date, payment.amount, customer.active as customer_active
from customer
left join payment on payment.customer_id = customer.customer_id
where customer.active = 1
order by payment_date;