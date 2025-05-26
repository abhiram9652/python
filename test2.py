import requests

# Test the translation endpoint
response = requests.post(
    'server-production-3fa4.up.railway.app',
    json={'text': 'Hello, how are you?'}
)

print("Status Code:", response.status_code)
print("Response:", response.json()) 
