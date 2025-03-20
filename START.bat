import requests

def get_ip_info(ip_address, token):
    try:
        headers = {
            'Authorization': f'Bearer {token}'
        }
        response = requests.get(f"https://ipinfo.io/{ip_address}/json", headers=headers)
        data = response.json()
        return data
    except requests.RequestException as e:
        print(f"Error fetching IP information: {e}")
        return None

if __name__ == "__main__":
    ip_address = input("Enter the IP address to track: ")
    token = input("Enter your API token: ")
    ip_info = get_ip_info(ip_address, token)
    if ip_info:
        print(f"IP Address: {ip_info.get('ip')}")
        print(f"City: {ip_info.get('city')}")
        print(f"Region: {ip_info.get('region')}")
        print(f"Country: {ip_info.get('country')}")
        print(f"Location: {ip_info.get('loc')}")
        print(f"Organization: {ip_info.get('org')}")
        print(f"Timezone: {ip_info.get('timezone')}")
        

