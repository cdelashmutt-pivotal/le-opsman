#!/bin/sh
set -e

cd ./crypto-material
tar xzvf crypto-*.tgz

CERT=$(cat fullchain.pem)
KEY=$(cat key.pem)
 
uaac target https://$OPSMAN_HOST/uaa --skip-ssl-validation
uaac token owner get opsman $OPSMAN_USER -s "" -p $OPSMAN_PASSWORD
ACCESS_TOKEN=$( uaac context | grep access_token | tr -s " " | cut -d " " -f 3 )

curl "https://$OPSMAN_HOST/v0/settings/ssl_certificate" -X PUT -H "Authorization: Bearer $ACCESS_TOKEN" \
  -d "{\"ssl_certificate\": { \"certificate\": \"$CERT\", \"private_key\": \"$KEY\" } }"
