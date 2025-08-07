import pandas as pd
import os

# Get output của task extract
# df = outputs.extract.outputFiles["green_tripdata_2020-01.csv"]
# print(df.shape)

df = pd.read_csv("green_tripdata_2020-01.csv")
print(f"Shape của df: {df.shape}")
