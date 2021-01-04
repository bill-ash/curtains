import urequests

url = 'http://192.168.4.23:5555/hello'

print(url)
response = urequests.post(url)