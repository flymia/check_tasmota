#!/usr/bin/env bash

# Define an array of Tasmota hostnames
TASMOTA_HOSTNAMES=("example.local")

for i in "${TASMOTA_HOSTNAMES[@]}"
do
    # Construct the URL for each hostname
    URL="http://$i/cm?cmnd=Status+10"
    
    # Use curl to retrieve data from the API
    CURPWR=$(curl -s "$URL" | jq '.StatusSNS.ENERGY.Power')
    
    # Format and print the result as a CheckMK check
    echo "0 \"Tasmota $i Watt\" $i-watt=$CURPWR"
done


