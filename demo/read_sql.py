from kestra import Kestra

with open("demo/demo.sql", "r") as f:
    demo_content = f.read()

Kestra.outputs({"demo_content": demo_content})
