-- Operational layer
-- Load dataset GDP
SET GLOBAL local_infile = ON; 
SHOW VARIABLES LIKE "local_infile"
CREATE SCHEMA Countries;
Use Countries
drop table if exists GDP;
Create table GDP
(ID DOUBLE,
Country_Name VARCHAR(255),
Country_Code VARCHAR(255), 
Indicator_Name VARCHAR(255),
GDP_y2010 DOUBLE,
GDP_y2011 DOUBLE,
GDP_y2012 DOUBLE,
GDP_y2013 DOUBLE,
GDP_y2014 DOUBLE,
GDP_y2015 DOUBLE,
GDP_y2016 DOUBLE, 
GDP_y2017 DOUBLE,
PRIMARY KEY (ID),
FOREIGN KEY (Country_Name)references population(Country_Name),
FOREIGN KEY (Country_Name)references natural_resources_percentage(Country_Name),
FOREIGN KEY (Country_Name)references male_percentage(Country_Name),
FOREIGN KEY (Country_Name)references unemployment_rate(Country_Name),
FOREIGN KEY (Country_Name)references working_age_pop_percentage(Country_Name));


LOAD DATA LOCAL INFILE '/Users/xinqi/Desktop/Data Engineering 1/Project/New Data Set/GDP 2010-2017.csv'
INTO TABLE GDP
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r'
IGNORE 1 LINES
(ID, Country_Name, Country_Code, Indicator_Name, @v_y2010, @v_y2011, @v_y2012, @v_y2013, @v_y2014, @v_y2015, @v_y2016, @v_y2017)
SET
GDP_y2010 = nullif(@v_y2010, ''),
GDP_y2011 = nullif(@v_y2011, ''),
GDP_y2012 = nullif(@v_y2011, ''),
GDP_y2013 = nullif(@v_y2013, ''),
GDP_y2014 = nullif(@v_y2014, ''),
GDP_y2015 = nullif(@v_y2015, ''),
GDP_y2016 = nullif(@v_y2016, ''),
GDP_y2017 = nullif(@v_y2017, '');

SELECT * FROM Countries.GDP

-- Load dataset population
drop table if exists population
create table population
(ID DOUBLE,
Country_Name VARCHAR(255),
Country_Code VARCHAR(255), 
Indicator_Name VARCHAR(255),
pop_y2010 DOUBLE,
pop_y2011 DOUBLE,
pop_y2012 DOUBLE,
pop_y2013 DOUBLE,
pop_y2014 DOUBLE,
pop_y2015 DOUBLE,
pop_y2016 DOUBLE, 
pop_y2017 DOUBLE,
PRIMARY KEY (Country_Name),
FOREIGN KEY (Country_Name)references working_age_pop_percentage(Country_Name));


LOAD DATA LOCAL INFILE '/Users/xinqi/Desktop/Data Engineering 1/Project/New Data Set/Population 2010-2017.csv'
INTO TABLE population
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r'
IGNORE 1 LINES
(ID, Country_Name, Country_Code, Indicator_Name, @v_y2010, @v_y2011, @v_y2012, @v_y2013, @v_y2014, @v_y2015, @v_y2016, @v_y2017)
SET
pop_y2010 = nullif(@v_y2010, ''),
pop_y2011 = nullif(@v_y2011, ''),
pop_y2012 = nullif(@v_y2012, ''),
pop_y2013 = nullif(@v_y2013, ''),
pop_y2014 = nullif(@v_y2014, ''),
pop_y2015 = nullif(@v_y2015, ''),
pop_y2016 = nullif(@v_y2016, ''),
pop_y2017 = nullif(@v_y2017, '');

SELECT * FROM Countries.population


-- Load dataset working_age_pop_percentage
drop table if exists working_age_pop_percentage
create table working_age_pop_percentage
(ID DOUBLE,
Country_Name VARCHAR(255),
Country_Code VARCHAR(255), 
Indicator_Name VARCHAR(255),
working_pop_percent_y2010 DOUBLE,
working_pop_percent_y2011 DOUBLE,
working_pop_percent_y2012 DOUBLE,
working_pop_percent_y2013 DOUBLE,
working_pop_percent_y2014 DOUBLE,
working_pop_percent_y2015 DOUBLE,
working_pop_percent_y2016 DOUBLE, 
working_pop_percent_y2017 DOUBLE,
PRIMARY KEY (Country_Name));


LOAD DATA LOCAL INFILE '/Users/xinqi/Desktop/Data Engineering 1/Project/New Data Set/Working Age Population in Percentage.csv'
INTO TABLE working_age_pop_percentage
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r'
IGNORE 1 LINES
(ID, Country_Name, Country_Code, Indicator_Name, @v_y2010, @v_y2011, @v_y2012, @v_y2013, @v_y2014, @v_y2015, @v_y2016, @v_y2017)
SET
working_pop_percent_y2010 = nullif(@v_y2010, ''),
working_pop_percent_y2011 = nullif(@v_y2011, ''),
working_pop_percent_y2012 = nullif(@v_y2012, ''),
working_pop_percent_y2013 = nullif(@v_y2013, ''),
working_pop_percent_y2014 = nullif(@v_y2014, ''),
working_pop_percent_y2015 = nullif(@v_y2015, ''),
working_pop_percent_y2016 = nullif(@v_y2016, ''),
working_pop_percent_y2017 = nullif(@v_y2017, '');

SELECT * FROM Countries.working_age_pop_percentage


-- Load dataset unemployment_rate
drop table if exists unemployment_rate
create table unemployment_rate
(ID DOUBLE,
Country_Name VARCHAR(255),
Country_Code VARCHAR(255), 
Indicator_Name VARCHAR(255),
unemployment_y2010 DOUBLE,
unemployment_y2011 DOUBLE,
unemployment_y2012 DOUBLE,
unemployment_y2013 DOUBLE,
unemployment_y2014 DOUBLE,
unemployment_y2015 DOUBLE,
unemployment_y2016 DOUBLE, 
unemployment_y2017 DOUBLE,
PRIMARY KEY (Country_Name));

LOAD DATA LOCAL INFILE '/Users/xinqi/Desktop/Data Engineering 1/Project/New Data Set/Unemployment Rate.csv'
INTO TABLE unemployment_rate
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r'
IGNORE 1 LINES
(ID, Country_Name, Country_Code, Indicator_Name, @v_y2010, @v_y2011, @v_y2012, @v_y2013, @v_y2014, @v_y2015, @v_y2016, @v_y2017)
SET
unemployment_y2010 = nullif(@v_y2010, ''),
unemployment_y2011 = nullif(@v_y2011, ''),
unemployment_y2012 = nullif(@v_y2012, ''),
unemployment_y2013 = nullif(@v_y2013, ''),
unemployment_y2014 = nullif(@v_y2014, ''),
unemployment_y2015 = nullif(@v_y2015, ''),
unemployment_y2016 = nullif(@v_y2016, ''),
unemployment_y2017 = nullif(@v_y2017, '');

SELECT * FROM Countries.unemployment_rate


-- Load dataset male_percentage
drop table if exists male_percentage
create table male_percentage
(ID DOUBLE,
Country_Name VARCHAR(255),
Country_Code VARCHAR(255), 
Indicator_Name VARCHAR(255),
male_percentage_y2010 DOUBLE,
male_percentage_y2011 DOUBLE,
male_percentage_y2012 DOUBLE,
male_percentage_y2013 DOUBLE,
male_percentage_y2014 DOUBLE,
male_percentage_y2015 DOUBLE,
male_percentage_y2016 DOUBLE, 
male_percentage_y2017 DOUBLE,
PRIMARY KEY (Country_Name));

LOAD DATA LOCAL INFILE '/Users/xinqi/Desktop/Data Engineering 1/Project/New Data Set/Population Male Percentage.csv'
INTO TABLE male_percentage
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r'
IGNORE 1 LINES
(ID, Country_Name, Country_Code, Indicator_Name, @v_y2010, @v_y2011, @v_y2012, @v_y2013, @v_y2014, @v_y2015, @v_y2016, @v_y2017)
SET
male_percentage_y2010 = nullif(@v_y2010, ''),
male_percentage_y2011 = nullif(@v_y2011, ''),
male_percentage_y2012 = nullif(@v_y2012, ''),
male_percentage_y2013 = nullif(@v_y2013, ''),
male_percentage_y2014 = nullif(@v_y2014, ''),
male_percentage_y2015 = nullif(@v_y2015, ''),
male_percentage_y2016 = nullif(@v_y2016, ''),
male_percentage_y2017 = nullif(@v_y2017, '');

SELECT * FROM Countries.male_percentage


-- Load dataset natural_resources_percentage
drop table if exists natural_resources_percentage
create table natural_resources_percentage
(ID DOUBLE,
Country_Name VARCHAR(255),
Country_Code VARCHAR(255), 
Indicator_Name VARCHAR(255),
nr_percentage_y2010 DOUBLE,
nr_percentage_y2011 DOUBLE,
nr_percentage_y2012 DOUBLE,
nr_percentage_y2013 DOUBLE,
nr_percentage_y2014 DOUBLE,
nr_percentage_y2015 DOUBLE,
nr_percentage_y2016 DOUBLE, 
nr_percentage_y2017 DOUBLE,
PRIMARY KEY (Country_Name));

LOAD DATA LOCAL INFILE '/Users/xinqi/Desktop/Data Engineering 1/Project/New Data Set/Natural Resources Rent Percentage.csv'
INTO TABLE natural_resources_percentage
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r'
IGNORE 1 LINES
(ID, Country_Name, Country_Code, Indicator_Name, @v_y2010, @v_y2011, @v_y2012, @v_y2013, @v_y2014, @v_y2015, @v_y2016, @v_y2017)
SET
nr_percentage_y2010 = nullif(@v_y2010, ''),
nr_percentage_y2011 = nullif(@v_y2011, ''),
nr_percentage_y2012 = nullif(@v_y2012, ''),
nr_percentage_y2013 = nullif(@v_y2013, ''),
nr_percentage_y2014 = nullif(@v_y2014, ''),
nr_percentage_y2015 = nullif(@v_y2015, ''),
nr_percentage_y2016 = nullif(@v_y2016, ''),
nr_percentage_y2017 = nullif(@v_y2017, '');

SELECT * FROM Countries.natural_resources_percentage

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

DROP PROCEDURE IF EXISTS Createanalyticallayer;
DELIMITER //

CREATE PROCEDURE Createanalyticallayer()
BEGIN
DROP TABLE IF EXISTS Analytical_Countries;
CREATE TABLE Analytical_Countries AS
SELECT 
         population.ID AS ID,
         population.Country_Name AS Country_Name,
         population.pop_y2015 AS pop_2015, 
         -- Transform percentage variables into percent by dividing 100, and limit 4 decimals
		 ROUND(working_age_pop_percentage.working_pop_percent_y2015/100,4) AS working_pop_percent_2015, 
         ROUND(unemployment_rate.unemployment_y2015/100,4) AS unemployment_2015,
         ROUND(male_percentage.male_percentage_y2015/100,4) AS male_percentage_2015,
         ROUND(natural_resources_percentage.nr_percentage_y2015/100,4) AS natural_resources_percentage_2015,
         GDP.GDP_Y2015 AS GDP_2015
FROM population 
INNER JOIN working_age_pop_percentage
ON population.Country_Name = working_age_pop_percentage.Country_Name
INNER JOIN unemployment_rate
ON population.Country_Name = unemployment_rate.Country_Name
INNER JOIN male_percentage
ON population.Country_Name = male_percentage.Country_Name
INNER JOIN natural_resources_percentage
ON population.Country_Name = natural_resources_percentage.Country_Name
INNER JOIN GDP
ON population.Country_Name = GDP.Country_Name;
END //

DELIMITER ;

CALL Createanalyticallayer();
SELECT * FROM Analytical_Countries

-- 1. Create a procedure that gives the working age population number for any specified country

USE Countries
DROP PROCEDURE IF EXISTS Getworkingpop;

DELIMITER //

CREATE PROCEDURE Getworkingpop(
     IN country VARCHAR(25),
     OUT working_pop_2015 INT
)
BEGIN
	SELECT (Analytical_Countries.pop_2015 * Analytical_Countries.working_pop_percent_2015) AS working_pop_2015
    INTO working_pop_2015
    FROM Analytical_Countries
    WHERE Country_Name = country;
END //

DELIMITER ;
 
call Getworkingpop('Austria', @working_pop_2015);
SELECT @working_pop_2015;


-- 2. a). Create a procedure that gives the unemployed population on any specified countries
DROP PROCEDURE IF EXISTS Getunemployment;

DELIMITER //

CREATE PROCEDURE Getunemployment(
    IN country VARCHAR(25),
    OUT unemployed_pop_2015 INT
)
BEGIN
	SELECT (Analytical_Countries.pop_2015 * Analytical_Countries.working_pop_percent_2015 * Analytical_Countries.unemployment_2015) AS unemployed_pop_2015
    INTO unemployed_pop_2015
    FROM Analytical_Countries
    WHERE Country_Name = country;
END //

DELIMITER ;

call Getunemployment('Austria', @unemployed_pop_2015);
SELECT @unemployed_pop_2015;


-- 2. b). Creating a trigger which is activated if an update is added to population table.
-- Once the trigger is triggered, the new update will be updated into my previously created 
-- data store Analytical_Countries.

DROP TRIGGER IF EXISTS after_country_update; 
DROP TRIGGER IF EXISTS after_country_insert;
DROP TRIGGER IF EXISTS after_country_insert_update;
DROP TRIGGER IF EXISTS after_country_insert2;
DELIMITER $$
-- Create the trigger when update on population
CREATE TRIGGER after_country_update
AFTER UPDATE
ON population FOR EACH ROW
BEGIN
	
	-- log the new country of the newley inserted order
    	INSERT INTO messages SELECT CONCAT('New Country_code: ', NEW.Country_Code, 'New country: ',NEW.Country_Name);

	-- archive the country and assosiated table entries to Analytical_Countries
  	INSERT INTO Analytical_Countries
    SELECT 
             population.ID AS ID,
             population.Country_Name AS Country_Name,
             population.pop_y2015 AS pop_2015, 
             ROUND(working_age_pop_percentage.working_pop_percent_y2015/100,4) AS working_pop_percent_2015, 
             ROUND(unemployment_rate.unemployment_y2015/100,4) AS unemployment_2015,
             ROUND(male_percentage.male_percentage_y2015/100,4) AS male_percentage_2015,
			 ROUND(natural_resources_percentage.nr_percentage_y2015/100,4) AS natural_resources_percentage_2015,
             GDP.GDP_Y2015 AS GDP_2015
	FROM population 
    INNER JOIN working_age_pop_percentage
    ON population.Country_Name = working_age_pop_percentage.Country_Name
	INNER JOIN unemployment_rate
    ON population.Country_Name = unemployment_rate.Country_Name
	INNER JOIN male_percentage
    ON population.Country_Name = male_percentage.Country_Name
    INNER JOIN natural_resources_percentage
    ON population.Country_Name = natural_resources_percentage.Country_Name
    INNER JOIN GDP
    ON population.Country_Name = GDP.Country_Name
    WHERE population.ID = NEW.ID;
END $$

DELIMITER ;

-- Testing if the trigger works:

-- Listing the current state of the Analytical_Countries.
SELECT * FROM Analytical_Countries ORDER BY ID;

-- Now will activate the trigger by updating country_code in population:
CREATE TABLE IF NOT EXISTS messages (message varchar(100) NOT NULL);
TRUNCATE messages; 

UPDATE population SET Country_Code='ALG4' WHERE Country_Name='Algeria';

-- Check results: messages and Analytical_Countries 
SELECT * FROM population ORDER BY ID;
SELECT * FROM messages;
SELECT * FROM Analytical_Countries ORDER BY ID;



-- 3. Create a procedure that gives the male working population in 2015 across different countries
Use Countries;
DROP PROCEDURE IF EXISTS Getworkingmalepop;

DELIMITER //

CREATE PROCEDURE Getworkingmalepop(
IN country VARCHAR(25),
OUT working_male_pop_2015 INT
)
BEGIN
	SELECT 
    (Analytical_Countries.male_percentage_2015 * Analytical_Countries.working_pop_percent_2015 * Analytical_Countries.pop_2015) AS working_male_pop_2015
INTO working_male_pop_2015
FROM Analytical_Countries
WHERE Country_Name = country;
END //

DELIMITER ;

call Getworkingmalepop('Austria',@working_male_pop_2015);
SELECT @working_male_pop_2015;


-- 4. Create a procedure that gives the total amount of counntries' natural resources in 2015

DROP PROCEDURE IF EXISTS Getnaturalresource;

DELIMITER //

CREATE PROCEDURE Getnaturalresource(
IN country VARCHAR(25),
OUT natural_resource_2015 INT
)
BEGIN
	SELECT 
    (Analytical_Countries.natural_resources_percentage_2015 * Analytical_Countries.GDP_2015) AS natural_resource_2015
INTO natural_resource_2015
FROM Analytical_Countries
WHERE Country_Name = country;
END //

DELIMITER ;
 
call Getnaturalresource('Austria', @natural_resource_2015);
SELECT @natural_resource_2015;

-- 5. Data mart with views
-- Create two views, which contains countries with high GDP_2015 and low GDP_2015 

USE Countries;

DROP VIEW IF EXISTS High_GDP_Countries;
	CREATE VIEW `High_GDP_Countries`
	AS
	SELECT Analytical_Countries.Country_Name
		,Analytical_Countries.GDP_2015
		,GDP.GDP_y2016
	FROM Analytical_Countries
	INNER JOIN GDP USING (ID)
	WHERE Analytical_Countries.GDP_2015 > 57642914303
	ORDER BY GDP_2015 DESC;
    
    
DROP VIEW IF EXISTS Low_GDP_Countries;

CREATE VIEW `Low_GDP_Countries` 
AS
	SELECT Analytical_Countries.Country_Name
		,Analytical_Countries.GDP_2015
		,GDP.GDP_y2016
	FROM Analytical_Countries
	INNER JOIN GDP USING (ID)
WHERE Analytical_Countries.GDP_2015 < 57642914303 
ORDER BY GDP_2015 ASC;








