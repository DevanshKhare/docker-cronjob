import time
import requests

def call_api():
    url = "https://example-site-url"
    try:
        response = requests.get(url)
        if response.status_code == 200:
            print("API call successful")
        else:
            print("API call failed")
    except Exception as e:
        print("API call failed",e)
        time.sleep(5)

if __name__ == "__main__":
    call_api()