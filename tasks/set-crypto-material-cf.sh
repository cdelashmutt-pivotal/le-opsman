#!/bin/sh
set -e

cd ./crypto-material

CERT="$(sed -e 's/$/\\r\\n/g' < fullchain.pem | tr -d '\n')"
KEY="$(sed -e 's/$/\\r\\n/g' < key.pem | tr -d '\n')"

cat << EOF > cert.cfg
product-name: cf
product-properties:
  .properties.networking_poe_ssl_certs:
    value:
    - certificate:
        cert_pem: "$CERT"
        private_key_pem: "$KEY"
        name: default
EOF

om -t $OPSMAN_HOST -u $OPSMAN_USER -p $OPSMAN_PASSWORD config-product -c cert.cfg