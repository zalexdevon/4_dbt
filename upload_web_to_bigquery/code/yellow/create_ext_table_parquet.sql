CREATE OR REPLACE EXTERNAL TABLE `{{table}}`
(
    VendorID STRING ,
    tpep_pickup_datetime TIMESTAMP,
    tpep_dropoff_datetime TIMESTAMP,
    passenger_count NUMERIC ,
    trip_distance NUMERIC,
    RatecodeID STRING,
    store_and_fwd_flag STRING ,
    PULocationID STRING ,
    DOLocationID STRING ,
    payment_type NUMERIC,
    fare_amount NUMERIC ,
    extra NUMERIC,
    mta_tax NUMERIC ,
    tip_amount NUMERIC ,
    tolls_amount NUMERIC ,
    improvement_surcharge NUMERIC ,
    total_amount NUMERIC ,
    congestion_surcharge NUMERIC
)
OPTIONS (
    format = 'PARQUET',
    uris = ["{{gcs_file}}"]
);
