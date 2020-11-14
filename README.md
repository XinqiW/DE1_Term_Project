# DE1_Term_Project

1. OPERATIONAL LAYER: The following EER diagram represents my operational data layer. It includes 6 tables in total, which are GDP, unemployment_rate, male_percentage, natural_resources_percentage, population and working_age_pop_percenatge. Country_Name is the primary key that link them together. 

![Operational EER Diagram](https://user-images.githubusercontent.com/69182292/99155560-47c79700-26b9-11eb-9764-193a56c740ef.png)


2. ANALYTICS: Potential questions to be answered in the data set and its following proposed solutions:
* What is the working age population with population and working age pop percentage in 2015?
  * Need to create an analytical data store contains dataset in 2015 (analytical data layer) with ID, country name, poopulation, GDP, male percentage, natural resource percentage, unemployment percentage, and working age population percentage. Then create a stored procedures with calculations of working age population with specified countries

* What is the unemployment population with unemployment rate and working age population in 2015?
  * Create a stored procedures with calculations of unemployment population with specified countries. Also, create a trigger on population, so everytime a new change or update is made, my analytical data store will be updated.

* What is the male working population in 2015 across different countries?
  * Create a stored procedures with calculations of male working population in 2015.

* What is the total natural resource in 2015 across different countries using GDP?
  * Create a stored procedures with calculations of natural resource amount in 2015.

* Get countries with high GDP and low GDP from 2015 and 2016
  * Create views with categorized high GDP countries and low GDP countries.

3. Analytical layer: The following Creating the analytical data store
-- This include ID, country name and all 6 variables at year 2015.
