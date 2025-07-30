#!/usr/bin/with-contenv bashio
echo "Starting GREE DUMMY SERVER!"
DOMAIN_NAME=$(jq -r '.DOMAIN_NAME' /data/options.json)
EXTERNAL_IP=$(jq -r '.EXTERNAL_IP' /data/options.json)

# Export them for subprocesses (like Python) to see
export DOMAIN_NAME
export EXTERNAL_IP

echo "DOMAIN_NAME: $DOMAIN_NAME"
echo "EXTERNAL_IP: $EXTERNAL_IP"

python3 gree-dummy-tls-server.py