DROP TABLE IF EXISTS crimes;
CREATE TABLE crimes
(
  id INT
  , case_number VARCHAR (20)
  , crime_date TIMESTAMP
  , block VARCHAR(50)
  , IUCR VARCHAR(10)
  , primary_type VARCHAR(50)
  , description VARCHAR(75)
  , location_desc VARCHAR (75)
  , arrest VARCHAR(5)
  , domestic VARCHAR(5)
  , beat VARCHAR(7)
  , district VARCHAR(7)
  , ward SMALLINT
  , community_area VARCHAR(10)
  , fbi_code VARCHAR(5)
  , x_coord FLOAT
  , y_coord FLOAT
  , crime_year SMALLINT
  , record_update_date TIMESTAMP
  , latitude FLOAT
  , longitude FLOAT
  , location VARCHAR (60)
)
distributed by (id);
