#                              __
# .--------.--.--.-----.-----.|  |
# |        |  |  |__ --|  _  ||  |
# |__|__|__|___  |_____|__   ||__|
#          |_____|        |__|
#
# MySQL DML Exercises 14/20 - The GROUP BY clause

# Write a query to select the top 10 paying customers with a first name that begins with S, ordered by total revenue in descending order.
# In other words:
# - Select all payments
# - Use LEFT JOIN to pull in information about the customer.
# - Use the CONCAT function to join first/last name together
# - Use GROUP BY and SUM to group payments by customer name combined with the sum of payment amounts to form total_revenue.
# - Use WHERE and the LEFT function to find customers with first name starting with S
# Include the following columns: Customer Name (First + Space + Last) as customer_name, Total Revenue as total_revenue

select 
 concat(customer.first_name,' ', customer.last_name) as customer_name, 
 sum(payment.amount) as total_revenue
from customer
left join payment on customer.customer_id = payment.customer_id
where left(customer.first_name, 1) = 'S'
group by customer_name
order by total_revenue desc
limit 10;