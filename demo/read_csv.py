import pandas as pd
import os

# Get output của task extract
csv_path = "green_tripdata_2020-01.csv"

# Kiểm tra xem file có tồn tại không
if not os.path.exists(csv_path):
    print(f"{csv_path} not exists")
else:
    print(f"{csv_path} exists")
