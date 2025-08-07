CREATE TABLE IF NOT EXISTS `{{table}}`
(
    unique_row_id BYTES,
    filename STRING,      
    VendorID STRING ,
    lpep_pickup_datetime TIMESTAMP,
    lpep_dropoff_datetime TIMESTAMP,
    store_and_fwd_flag STRING,
    RatecodeID STRING,
    PULocationID STRING,
    DOLocationID STRING,
    passenger_count INTEGER,
    trip_distance NUMERIC,
    fare_amount NUMERIC ,
    extra NUMERIC,
    mta_tax NUMERIC,
    tip_amount NUMERIC,
    tolls_amount NUMERIC ,
    ehail_fee NUMERIC,
    improvement_surcharge NUMERIC,
    total_amount NUMERIC,
    payment_type INTEGER,
    trip_type STRING ,
    congestion_surcharge NUMERIC
)
PARTITION BY DATE(lpep_pickup_datetime);