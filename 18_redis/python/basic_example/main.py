import redis

redis_client = redis.Redis(host='localhost', port= 6379, db=0)

redis_client.set('myKey', 'Value')

value = redis_client.get('myKey')

# redis_client.setex('myKey', 10, 'my value')

print(str(value, 'UTF-8'))