CREATE OR REPLACE EXTERNAL TABLE `{{table}}`
(
    dispatching_base_num STRING,
    pickup_datetime TIMESTAMP, 
    dropOff_datetime TIMESTAMP, 
    PUlocationID STRING, 
    DOlocationID STRING, 
    SR_Flag STRING, 
    Affiliated_base_number STRING
)
OPTIONS (
    format = 'PARQUET',
    uris = ["{{gcs_file}}"]
);
