import json

# Serializing/marshalling
user = {
    'name': 'John Doe',
    'age': 30,
    'email': 'john.doe@example.com'
}
user_json = json.dumps(user)  # convert the user object to a JSON string
print(user)
print(user_json)
# send the user JSON over the network

# Unmarshalling/deserializing
received_json = '{"name": "Jane Doe", "age": 25, "email": "jane.doe@example.com"}'
received_user = json.loads(received_json)  # convert the received JSON string back to a Python dictionary
print(received_user)
# process the received user object
