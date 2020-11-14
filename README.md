# DE1_Term_Project

OPERATIONAL LAYER: Create an operational data layer in MySQL. 


Markup : ![picture alt](http://via.placeholder.com/200x150 "Title is optional")
Import a relational data set of your choosing into your local instance. Find a data which makes sense to be transformed in analytical data layer for further analytics. In ideal case, you can use the outcome of HW1.





-- ANALYTICS:
-- 1. Q: What is the working age population with population and working age pop percentage in 2015?
-- 1. A: Need to create an analytical data store contains dataset in 2015 (analytical data layer) with ID, 
-- country name, poopulation, GDP, male percentage, natural resource percentage, unemployment percentage, and
-- working age population percentage. Then create a stored procedures with calculations of working age 
-- population with specified countries

-- 2. Q: What is the unemployment population with unemployment rate and working age population in 2015?
-- 2. A: Create a stored procedures with calculations of unemployment population with specified countries. Also,
-- create a trigger on population, so everytime a new country added, my analytical data store will be updated.

-- 3. Q: What is the male working population in 2015 across different countries?
-- 3. A: Create a stored procedures with calculations of male working population in 2015.

-- 4. Q: What is the total natural resource in 2015 across different countries using GDP?
-- 4. A: Create a stored procedures with calculations of natural resource amount in 2015.

-- 5. Q: Get countries with high GDP and low GDP
-- 5. A: Create views with categorized high GDP countries and low GDP countries

-- Analytical layer: Creating the analytical data store
-- This include ID, country name and all 6 variables at year 2015.
