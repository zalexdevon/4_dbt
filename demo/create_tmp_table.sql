CREATE OR REPLACE TABLE `{{table}}`
AS
SELECT
MD5(CONCAT(
    COALESCE(CAST(VendorID AS STRING), ""),
    COALESCE(CAST(lpep_pickup_datetime AS STRING), ""),
    COALESCE(CAST(lpep_dropoff_datetime AS STRING), ""),
    COALESCE(CAST(PULocationID AS STRING), ""),
    COALESCE(CAST(DOLocationID AS STRING), "")
)) AS unique_row_id,
"{{source_file}}" AS filename,
SAFE_CAST(passenger_count AS INT64) AS passenger_count,
SAFE_CAST(payment_type AS INT64) AS payment_type,
*
FROM `{{ext_table}}`;