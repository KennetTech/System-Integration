import requests
import json

data = {'key': 'value'}  # Replace with your own data
url = 'http://127.0.0.1:8000/webhook'  # Replace with the receiver server's IP

response = requests.post(url, json=data)
print('Response:', response.text)