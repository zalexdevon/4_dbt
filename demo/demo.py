import pandas as pd
import os

# Đọc file parquet
print(f"Đường dẫn làm việc hiện tại: {os.getcwd()}")

file_path = "green_tripdata_2020-01.parquet"
if os.path.exists(file_path):
    print("file path exists")
else:
    print("file path not exists")
# df = pd.read_parquet(file_path)

# # Ghi ra file CSV
# df.to_csv("green_tripdata_2020-01.csv", index=False)
