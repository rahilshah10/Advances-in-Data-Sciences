# pip install uber-rides
from uber_rides.session import Session
from uber_rides.client import UberRidesClient
import json

'''

https://developer.uber.com/docs/riders/ride-requests/tutorials/api/python

Fenway Park, Boston, MA, US
Latitude and longitude coordinates are: 42.346268, -71.095764.

125 Summer St, Boston, MA 02110
Latitude and longitude coordinates are: 42.345597,-71.041276

'''

session = Session(server_token='Uvu3eEPnLtPKCbTU7KrCko5jo1ua4CVgYAqd0JfO')
client = UberRidesClient(session)

response = client.get_products(42.34, -71.09)
print (response)
products = response.json.get('products')

print ("products")

for p in products:
  print (p)

response = client.get_price_estimates(
    start_latitude=42.346,
    start_longitude=-71.09,
    end_latitude=42.345,
    end_longitude=-71.041,
    seat_count=2
)

prices = response.json.get('prices')

for p in prices:
  print (p)
  print ("%s :: Distance %s Low  %s  High %s" % (p['localized_display_name'],p['distance'],p['low_estimate'],p['high_estimate']))    
#  print ("%s Distance %.3f Low  %.2f  High %.2f" % (p['localized_display_name'],p['distance'],p['low_estimate'],p['high_estimate']))  
  
