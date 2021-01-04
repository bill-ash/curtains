
import wifitools
import time
import config
import urequests

def main():
    ssid = config.SSID
    password = config.WIFI_PASSWORD
    field = '1'

    wifitools.connect(ssid,password)
    print('connected')
    time.sleep(5)

    for i in range(60*8):
        print('trying to post...')
        try:
            url = 'http://192.168.4.23:5555/hello?data=fromESP'
            print(url)
            response = urequests.post(url)
            print(response.text)
            
        except:
            pass
        time.sleep(5)

main()