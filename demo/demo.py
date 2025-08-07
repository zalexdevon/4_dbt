import pandas as pd
from kestra import Kestra

# Đọc file parquet
file_path = "green_tripdata_2020-01.parquet"
df = pd.read_parquet(file_path)

# Ghi ra file CSV
df.to_csv("green_tripdata_2020-01.csv", index=False)

# # Output biến df
# Kestra.outputs({"green_tripdata_2020-01": df})
