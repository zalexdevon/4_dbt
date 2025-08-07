CREATE OR REPLACE TABLE `{{table}}`
(
    unique_row_id BYTES,
    filename STRING,      
    dispatching_base_num STRING,
    pickup_datetime TIMESTAMP, 
    dropOff_datetime TIMESTAMP, 
    PUlocationID STRING, 
    DOlocationID STRING, 
    SR_Flag STRING, 
    Affiliated_base_number STRING, 
); 