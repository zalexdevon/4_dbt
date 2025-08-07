import os
from jinja2 import Template
from kestra import Kestra
import sys

GCP_PROJECT_ID = sys.argv[1]
GCP_DATASET = sys.argv[2]

with open("demo/demo.sql", "r") as f:
    sql_template = Template(f.read())

sql = sql_template.render(
    GCP_PROJECT_ID=GCP_PROJECT_ID,
    GCP_DATASET=GCP_DATASET,
)


Kestra.outputs({"sql": sql})
