#                              __
# .--------.--.--.-----.-----.|  |
# |        |  |  |__ --|  _  ||  |
# |__|__|__|___  |_____|__   ||__|
#          |_____|        |__|
#
# MySQL DML Exercises 16/18 - The INSERT statement

# Write a query to insert San Diego into the cities table.
# (Note: you will have to find and use the correct country_id).

insert into city(city, country_id)
values ('San Diego', 103)