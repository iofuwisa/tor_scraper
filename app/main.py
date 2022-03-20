import urllib.request

with urllib.request.urlopen('http://inet-ip.info/') as response:
    print(response.read())
