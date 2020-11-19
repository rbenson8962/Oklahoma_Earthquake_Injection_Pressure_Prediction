Below is my SQL code to clean the raw data up. I'm excluding erroneous data points (-999 table values) and low volume injectors (volume_BPD > 100).  
Most importantly, I am not interested in PSI values less than 5 (WHERE "Pressure_PSI">5).  
The mechanical reasoning for this is because the Arbuckle formation was underpressured.  
The result caused a vacuum effect where it drank enormous amounts of fluid and pressure readings were 0.  
This investigation is focused on when the Arbuckle began to push back as it reached saturation, and eventually, oversaturation as injection volumes exploded between 2012 and 2014.  

CREATE TABLE arbk_inject AS  

SELECT 

api, sum("Volume_BPD") AS total_volume, min("Pressure_PSI") AS minimum_psi, 
max("Pressure_PSI") AS maximum_psi, round(avg("Pressure_PSI")) AS average_psi, count("Volume_BPD") AS total_well_reports,
"Latitude" AS latitude, "Longitude" as longitude 

FROM injection1214

	WHERE "Pressure_PSI">5
	AND "Volume_BPD">100
	AND "Directive_Status" != 'NOT AN ARBUCKLE WELL'
	GROUP BY api, latitude, longitude
