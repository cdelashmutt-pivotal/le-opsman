#!/bin/sh
set -e

cd ./crypto-material

CERT="$(sed -e 's/$/\\r\\n/g' < fullchain.pem | tr -d '\n')"
KEY="$(sed -e 's/$/\\r\\n/g' < key.pem | tr -d '\n')"

uaac target https://$OPSMAN_HOST/uaa --skip-ssl-validation
uaac token owner get opsman $OPSMAN_USER -s "" -p $OPSMAN_PASSWORD
ACCESS_TOKEN=$( uaac context | grep access_token | tr -s " " | cut -d " " -f 3 )

curl "https://$OPSMAN_HOST/api/v0/settings/ssl_certificate" -X PUT -H "Authorization: Bearer $ACCESS_TOKEN" -H "Content-Type: application/json" -d "{\"ssl_certificate\": { \"certificate\": \"$CERT\", \"private_key\": \"$KEY\" } }" -v -k
