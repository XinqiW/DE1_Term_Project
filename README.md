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

3. Analytical layer: The following is my analytical layer, which includes ID, country name and all 6 variables at year 2015.

![Project Macro Data](https://user-images.githubusercontent.com/69182292/99156289-0a1a3c80-26c0-11eb-8ec8-34ebc08cc24a.png)

4. ETL Pipeline:
* Extract: Join tables from population, wokring_age_pop_percentage, unemployment_rate, male_percentage, natural_resources_percentage and GDP at year 2015 for operational layer.
* Transform: Transform percentage variables into percent by dividing 100, and limit 4 decimals.
* Load: Finally insert to Analytical_Countries when a trigger is performed: when population table is updated, new data will be updated in the Analytical_Countries table automatically. A message table is also included here.
* 4 stored procedures here:
  * Create a procedure that gives the working age population number for any specified country
  * Create a procedure that gives the unemployed population on any specified countries
  * Create a procedure that gives the male working population in 2015 across different countries
  * Create a procedure that gives the total amount of counntries' natural resources in 2015
  
  
5. Data Mart: 2 views are created to categorize countries with high GDP and low GDP in year 2015 and inner join with year 2016 from GDP table.

The final EER diagram looks like this:

![Final look](https://user-images.githubusercontent.com/69182292/99156613-8d3c9200-26c2-11eb-8f96-cd8086cafae8.png)
