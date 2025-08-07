import sys
import json

# Đọc đối số dòng lệnh đầu tiên (argv[1])
arg_str = sys.argv[1]

# Chuyển từ JSON string → dict
params = json.loads(arg_str)

# Truy cập giá trị
project_id = params.get("project_id")
dataset = params.get("dataset")

print(f"📦 Dữ liệu dict nhận được: {params}")
print(f"Project ID: {project_id}")
print(f"Dataset: {dataset}")
