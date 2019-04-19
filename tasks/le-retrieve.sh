#!/bin/sh

cd ./crypto-material

hostparam=""
for h in $HOSTNAMES
do
  hostparam="$hostparam -d $h"
done

params="--issue --dns dns_gd $hostparam --key-file key.pem --fullchain-file fullchain.pem --cert-file cert.pem --ca-file ca.pem" 
echo "Calling /usr/local/bin/acme.sh $params %@"
/usr/local/bin/acme.sh $params
