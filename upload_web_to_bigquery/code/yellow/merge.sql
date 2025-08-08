MERGE INTO `{{main_table}}` main
USING `{{tmp_table}}` tmp
ON main.unique_row_id = tmp.unique_row_id
WHEN NOT MATCHED THEN
    INSERT (
        unique_row_id,
        filename ,
        VendorID ,
        tpep_pickup_datetime ,
        tpep_dropoff_datetime ,
        passenger_count  ,
        trip_distance,
        RatecodeID,
        store_and_fwd_flag ,
        PULocationID ,
        DOLocationID ,
        payment_type ,
        fare_amount ,
        extra,
        mta_tax ,
        tip_amount ,
        tolls_amount ,
        improvement_surcharge ,
        total_amount ,
        congestion_surcharge
    )
    VALUES (
        tmp.unique_row_id,
        tmp.filename ,
        tmp.VendorID ,
        tmp.tpep_pickup_datetime ,
        tmp.tpep_dropoff_datetime ,
        tmp.passenger_count  ,
        tmp.trip_distance,
        tmp.RatecodeID,
        tmp.store_and_fwd_flag ,
        tmp.PULocationID ,
        tmp.DOLocationID ,
        tmp.payment_type ,
        tmp.fare_amount ,
        tmp.extra,
        tmp.mta_tax ,
        tmp.tip_amount ,
        tmp.tolls_amount ,
        tmp.improvement_surcharge ,
        tmp.total_amount ,
        tmp.congestion_surcharge
    )