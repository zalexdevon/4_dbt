MERGE INTO `{{main_table}}` main
USING `{{tmp_table}}` tmp
ON main.unique_row_id = tmp.unique_row_id
WHEN NOT MATCHED THEN
    INSERT (unique_row_id, filename, VendorID, lpep_pickup_datetime, lpep_dropoff_datetime, store_and_fwd_flag, RatecodeID, PULocationID, DOLocationID, passenger_count, trip_distance, fare_amount, extra, mta_tax, tip_amount, tolls_amount, ehail_fee, improvement_surcharge, total_amount, payment_type, trip_type, congestion_surcharge)
    VALUES (tmp.unique_row_id, tmp.filename, tmp.VendorID, tmp.lpep_pickup_datetime, tmp.lpep_dropoff_datetime, tmp.store_and_fwd_flag, tmp.RatecodeID, tmp.PULocationID, tmp.DOLocationID, tmp.passenger_count, tmp.trip_distance, tmp.fare_amount, tmp.extra, tmp.mta_tax, tmp.tip_amount, tmp.tolls_amount, tmp.ehail_fee, tmp.improvement_surcharge, tmp.total_amount, tmp.payment_type, tmp.trip_type, tmp.congestion_surcharge)