MERGE INTO `{{main_table}}` main
USING `{{tmp_table}}` tmp
ON main.unique_row_id = tmp.unique_row_id
WHEN NOT MATCHED THEN
    INSERT (main.unique_row_id, main.filename, main.VendorID, main.lpep_pickup_datetime, main.lpep_dropoff_datetime, main.store_and_fwd_flag, main.RatecodeID, main.PULocationID, main.DOLocationID, main.passenger_count, main.trip_distance, main.fare_amount, main.extra, main.mta_tax, main.tip_amount, main.tolls_amount, main.ehail_fee, main.improvement_surcharge, main.total_amount, main.payment_type, main.trip_type, main.congestion_surcharge)
    VALUES (tmp.unique_row_id, tmp.filename, tmp.VendorID, tmp.lpep_pickup_datetime, tmp.lpep_dropoff_datetime, tmp.store_and_fwd_flag, tmp.RatecodeID, tmp.PULocationID, tmp.DOLocationID, tmp.passenger_count, tmp.trip_distance, tmp.fare_amount, tmp.extra, tmp.mta_tax, tmp.tip_amount, tmp.tolls_amount, tmp.ehail_fee, tmp.improvement_surcharge, tmp.total_amount, tmp.payment_type, tmp.trip_type, tmp.congestion_surcharge)