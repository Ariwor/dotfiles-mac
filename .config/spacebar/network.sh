#!/usr/bin/env sh

# By anujc4, retrieved from https://github.com/cmacrae/spacebar/discussions/70#discussioncomment-663813

output=$(/System/Library/PrivateFrameworks/Apple80211.framework/Versions/A/Resources/airport -I | sed 's/SSID: //')
airport=$(echo "$output" | grep 'AirPort' | awk -F': ' '{print $2}')

if [ "$airport" = "Off" ]; then
  echo "Offline"
else
  echo "$(echo "$output" | grep ' SSID' | xargs | awk -F': ' 'echo $2')" \
    "$(echo "$output" | grep 'lastTxRate' | awk -F': ' '{print $2}')" Mb/s
fi