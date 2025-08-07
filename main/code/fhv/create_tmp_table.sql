CREATE OR REPLACE TABLE `{{table}}`
AS
SELECT
MD5(CONCAT(
    COALESCE(CAST(dispatching_base_num AS STRING), ""),
    COALESCE(CAST(pickup_datetime AS STRING), ""),
    COALESCE(CAST(dropOff_datetime AS STRING), ""),
    COALESCE(CAST(PULocationID AS STRING), ""),
    COALESCE(CAST(SR_Flag AS STRING), ""), 
    COALESCE(CAST(Affiliated_base_number AS STRING), ""), 
)) AS unique_row_id,
"{{source_file}}" AS filename,
*
FROM `{{ext_table}}`;