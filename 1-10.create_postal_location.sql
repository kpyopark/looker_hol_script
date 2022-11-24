CREATE TABLE sample_ds.postal_location (
	postcode STRING(10),
	postcode_l1 STRING(10),
	postcode_l2 STRING(10),
	postcode_l3 STRING(10),
	longitude FLOAT64,
	latitude FLOAT64,
	longitude_l1 FLOAT64,
	latitude_l1 FLOAT64,
	longitude_l2 FLOAT64,
	latitude_l2 FLOAT64,
	longitude_l3 FLOAT64,
	latitude_l3 FLOAT64
);

load data into sample_ds.postal_location
from files (
  format = 'CSV',
  skip_leading_rows=1,
  uris = ['gs://<<gcs bucket>>/geolocation.csv']
)
;
