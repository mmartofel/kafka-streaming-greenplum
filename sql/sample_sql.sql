--Last 20 crime incidents locations

SELECT case_number,primary_type,latitude,longitude FROM crimes where latitude is not null and longitude is not null ORDER BY crime_date DESC LIMIT 20;

-- last 20 crime incidents details 

SELECT CASE_NUMBER,CRIME_DATE,PRIMARY_TYPE,DESCRIPTION,LOCATION_DESC FROM crimes ORDER BY crime_date DESC LIMIT 20;
