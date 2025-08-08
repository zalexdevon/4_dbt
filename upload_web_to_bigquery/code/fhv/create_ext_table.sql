CREATE OR REPLACE EXTERNAL TABLE `{{table}}`
(
    dispatching_base_num STRING,
    pickup_datetime TIMESTAMP, 
    dropOff_datetime TIMESTAMP, 
    PUlocationID STRING, 
    DOlocationID STRING, 
    SR_Flag STRING, 
    Affiliated_base_number STRING,
)
OPTIONS (
    format = 'CSV',
    uris = ["{{gcs_file}}"],
    skip_leading_rows = 1, 
    ignore_unknown_values = TRUE
    -- null_marker = 'NaN'
);
