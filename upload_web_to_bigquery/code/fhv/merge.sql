MERGE INTO `{{main_table}}` main
USING `{{tmp_table}}` tmp
ON main.unique_row_id = tmp.unique_row_id
WHEN NOT MATCHED THEN
    INSERT (
        unique_row_id ,
        filename,      
        dispatching_base_num,
        pickup_datetime , 
        dropOff_datetime , 
        PUlocationID, 
        DOlocationID, 
        SR_Flag, 
        Affiliated_base_number, 
    )
    VALUES (
        tmp.unique_row_id ,
        tmp.filename,      
        tmp.dispatching_base_num,
        tmp.pickup_datetime , 
        tmp.dropOff_datetime , 
        tmp.PUlocationID, 
        tmp.DOlocationID, 
        tmp.SR_Flag, 
        tmp.Affiliated_base_number, 
    )