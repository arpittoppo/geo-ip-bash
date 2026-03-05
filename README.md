# GeoIP Bash Script

A simple and clean  Bash script that retrieves geographic information of an IP address using the **ip-api.com** API.

## Features

* Takes an IP address as input
* Fetches geolocation information
* Displays structured output including:

  * Country
  * Country Code
  * Region
  * City
  * ZIP Code
  * Latitude / Longitude
  * ISP
  * Organization
  * ASN

## Requirements

* Bash
* curl
* grep

These tools are already installed on most Linux systems.

## Usage

Run the script and provide a public IP address.

```bash
chmod +x geo.sh
./geo.sh <IP_ADDRESS>
```

Example:

```bash
./geo.sh 8.8.8.8
```

## Example Output

```
IP Information
---------------------------
Country      : United States
Country Code : US
Region       : California
City         : Mountain View
ZIP Code     : 94043

Coordinates
---------------------------
Latitude     : 37.4056
Longitude    : -122.0775

Network Information
---------------------------
ISP          : Google LLC
Organization : Google Public DNS
ASN          : AS15169 Google LLC
```

## API Used

https://ip-api.com/

## Author

Created while learning Bash scripting and cybersecurity fundamentals.
