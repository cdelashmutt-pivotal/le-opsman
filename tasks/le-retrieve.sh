#!/bin/sh

/usr/local/bin/acme.sh --issue --dns dns_gd -d grogscave.net -d opsman.cf.grogscave.net --cert-file ./crypto-materials/cert.pem --key-file ./crypto-materials/key.pem --fullchain-file ./crypto-materials/fullchain.pem
tar czvf ./crypto-materials/crypto.tgz ./crypto-materials/cert.pem ./crypto-materials/key.pem ./crypto-materials/fullchain.pem
