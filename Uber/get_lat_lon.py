'''
YOUR API KEY
AIzaSyBwAN0t_LU21mi2QAxepsdzymF1jCia6G8

https://developers.google.com/maps/documentation/geocoding/get-api-key

https://maps.googleapis.com/maps/api/geocode/json?address=1600+Amphitheatre+Parkway,+Mountain+View,+CA&key=YOUR_API_KEY

https://maps.googleapis.com/maps/api/geocode/json?address=1600+Amphitheatre+Parkway,+Mountain+View,+MA&key=AIzaSyBwAN0t_LU21mi2QAxepsdzymF1jCia6G8


13th Floor, 125 Summer St, Boston, MA 02110


'''
import urllib.parse

api_key='AIzaSyBwAN0t_LU21mi2QAxepsdzymF1jCia6G8'
address='13th Floor, 125 Summer St, Boston, MA 02110'

print (address)
address=urllib.parse.quote(address)
print (address)
req='https://maps.googleapis.com/maps/api/geocode/json?address=%s&key=%s'%(address,api_key)

print (req)
