import json
import yaml
import xml.etree.ElementTree as ET
import csv

def parse_file(file_path, file_type):
    with open(file_path, 'r') as f:
        if file_type == 'json':
            return json.load(f)
        elif file_type == 'yaml':
            return yaml.safe_load(f)
        elif file_type == 'xml':
            return ET.parse(f).getroot()
        elif file_type == 'csv':
            return csv.DictReader(f)

# Example usage:
data = parse_file('me.json', 'json')
print(data)

data = parse_file('me.yaml', 'yaml')
print(data)

data = parse_file('me.xml', 'xml')
print(data)

data = parse_file('me.csv', 'csv')
for row in data:
    print(row)
