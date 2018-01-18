import requests, re
from bs4 import BeautifulSoup, SoupStrainer, Comment
import json 

'''
Goes to a Yelp page given a keyword (i.e. coffee) and a city. And fetches
the names a address of the shops on the page.

It saves the data to a .csv and a .json file.


''''


re_dash = re.compile(r'[ ]+[\-][ ]+')
# Yelp’s Check-In To Check Out: FREE
yelp_add = re.compile(r'[ ]*Yelp[\’]s[ ]+Check[\-I]n[ ]+To[ ]+Check[ ]+Out[\:][ ]+FREE[ ]*')
re_address = re.compile(r'^[ ]*[0-9]+')

# Variables to scrape main yelp search for yelp_ shop
yelp_response = requests.get('http://www.yelp.com/search?find_desc=yelp_&find_loc=Boston%2C+Massachusetts&ns=1')

# https://www.yelp.com/search?find_desc=coffee&find_loc=Boston,+MA+02115,+USA

'''
https://www.yelp.com/search?cflt=restaurants&find_loc=Boston%2C+MA%2C+US
https://www.yelp.com/search?cflt=shopping&find_loc=Boston%2C+MA%2C+US
https://www.yelp.com/search?cflt=beautysvc&find_loc=Boston%2C+MA%2C+US
https://www.yelp.com/search?cflt=nightlife&find_loc=Boston%2C+MA%2C+US
https://www.yelp.com/search?find_desc=yoga&find_loc=Boston,+MA,+US
https://www.yelp.com/search?find_desc=dance&find_loc=Boston%2C+MA&ns=1

'''




yelp_soup = BeautifulSoup(yelp_response.content, "html.parser")

# where all yelp_ shop data will be placed
yelp_data = {}

# grabs individual yelp_ shop data off the main page
links = yelp_soup.findAll("a", {"class" : "biz-name"})
yelp_list = []
for l in links:
	 yelp_list.append(l['href'])

# removes first false link from page
linkList = yelp_list[1:]


# iterate through yelp_ shop links
for l in linkList:

	# where individual yelp_ shop data is stored
	shop_data = {}

	# create beautiful soup from individual page
	response = requests.get('http://www.yelp.com'+l);
	soup = BeautifulSoup(response.content, "html.parser")

	# shop name
	shop_name = soup.title.text
	parts = re_dash.split(shop_name)
#	print ("Scraping "+ shop_name)
#	print (parts)
	if len(parts) < 4: continue	
	m = re_address.findall(parts[3])
	if not m: continue
	print (parts)	
	# menu variables
	## note: some shops don't have menus
	shop_menu = {}
	menu = soup.findAll("div", { "class" : "ywidget menu-preview" })

	# hours variables
	shop_hours = ""
	hours = soup.findAll('table')


	# parses menu data to make it prettier / remove HTML
	for m in menu:
		items = m.findAll('dl')
		for i in items:
			dt = i.find('dt').text.strip()
			dd = i.find('dd').text.strip()
			shop_menu[dt] = dd

	# parses hours data to make it prettier / remove HTML
	for h in hours:
		trs = h.findAll('tr')
		for t in trs:
			pretty = t.text.strip()
			shop_hours = shop_hours + pretty

	# adds menu/hours to individual array
	shop_data['hours'] = shop_hours.strip().replace('\n', ' ')
	shop_data['menu'] = shop_menu

	# adds individual shop data to main data
	yelp_data[shop_name] = shop_data

# writes all data to file
with open('yelp_data.json', 'w') as outfile:
    json.dump(yelp_data, outfile)









