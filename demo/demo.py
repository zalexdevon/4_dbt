import pandas as pd

# Đọc file parquet
df = pd.read_parquet("green_tripdata_2020-01.parquet")

# Ghi ra file CSV
df.to_csv("green_tripdata_2020-01.csv", index=False)
