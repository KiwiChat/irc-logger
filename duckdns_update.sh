#!/bin/sh

DIR="$( cd "$( dirname "$0" )" && pwd )"
TOKEN=$("$DIR/config.py" DUCKDNS_TOKEN)
DOMAIN=$("$DIR/config.py" DUCKDNS_TOKEN)

while true; do
    echo url="https://www.duckdns.org/update?domains=$DOMAIN&token=$TOKEN&ip=" | curl --config -
    sleep 300
done
