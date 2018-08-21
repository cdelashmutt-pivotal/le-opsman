#!/bin/sh

cd ./crypto-material

/usr/local/bin/acme.sh --issue --dns dns_gd -d grogscave.net -d opsman.cf.grogscave.net --cert-file cert.pem --key-file key.pem --fullchain-file fullchain.pem
