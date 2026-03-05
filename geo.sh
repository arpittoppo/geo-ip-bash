#!/bin/bash

if [ "$1" == "" ]; then
    echo "Usage: $0 <YOUR PUBLIC IP>"
    exit 1
fi
res=$(curl -s http://ip-api.com/json/$1)

echo "IP Information"
echo "---------------------------"

echo "Country      : $(echo $res | grep -oP '"country":"\K[^"]+')"
echo "Country Code : $(echo $res | grep -oP '"countryCode":"\K[^"]+')"
echo "Region       : $(echo $res | grep -oP '"regionName":"\K[^"]+')"
echo "City         : $(echo $res | grep -oP '"city":"\K[^"]+')"
echo "ZIP Code     : $(echo $res | grep -oP '"zip":"\K[^"]+')"

echo ""

echo "Coordinates"
echo "---------------------------"

echo "Latitude     : $(echo $res | grep -oP '"lat":\K[^,]+')"
echo "Longitude    : $(echo $res | grep -oP '"lon":\K[^,]+')"

echo ""

echo "Network Information"
echo "---------------------------"

echo "ISP          : $(echo $res | grep -oP '"isp":"\K[^"]+')"
echo "Organization : $(echo $res | grep -oP '"org":"\K[^"]+')"
echo "ASN          : $(echo $res | grep -oP '"as":"\K[^"]+')"
