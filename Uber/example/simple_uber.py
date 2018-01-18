# pip install uber-rides
from uber_rides.session import Session
from uber_rides.client import UberRidesClient

session = Session(server_token='Uvu3eEPnLtPKCbTU7KrCko5jo1ua4CVgYAqd0JfO')
client = UberRidesClient(session)

response = client.get_products(37.77, -122.41)
print (response)
products = response.json.get('products')
print (products)

