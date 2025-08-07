import pandas as pd
import sys

# Lấy giá trị biến môi trường
source_file = sys.argv[1]
csv_file = sys.argv[2]

# Đọc file parquet
df = pd.read_parquet(source_file)

# Chỉ lấy 5 dòng đầu tiên
df = df.head(5)

# Ghi ra file CSV
df.to_csv(csv_file, index=False)
print(f"Shape của df: {df.shape}")

# # Output biến df
# Kestra.outputs({"green_tripdata_2020-01": df})
