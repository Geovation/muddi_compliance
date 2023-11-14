from jsonschema import validate
import json

schema_as_string = open("./schema.json", "r")


data = schema_as_string.read()

schema = json.loads(data)

json_to_validate = json.loads(open("./airports.fg.json", "r").read())

test = validate (
    instance=json_to_validate, 
    schema=schema
)

print(test)