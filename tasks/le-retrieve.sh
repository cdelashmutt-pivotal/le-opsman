#!/bin/sh

cd ./crypto-material

hostparam=""
for h in $HOSTNAMES
do
  hostparam="$hostparam -d $h"
done

/usr/local/bin/acme.sh --issue --dns dns_gd $hostparam --cert-file cert.pem --key-file key.pem --fullchain-file fullchain.pem --ca-file ca.pem
