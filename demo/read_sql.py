import os
from jinja2 import Template
from kestra import Kestra

with open("demo/demo.sql", "r") as f:
    sql_template = Template(f.read())

sql = sql_template.render(
    GCP_PROJECT_ID=os.environ.get("GCP_PROJECT_ID"),
    GCP_DATASET=os.environ.get("GCP_DATASET"),
)


Kestra.outputs({"sql": sql})
