#!/bin/sh

/usr/local/bin/acme.sh --issue --dns dns_gd -d grogscave.net -d opsman.cf.grogscave.net --cert-file ./crypto-material/cert.pem --key-file ./crypto-material/key.pem --fullchain-file ./crypto-material/fullchain.pem
tar czvf ./crypto-material/crypto-$(cat ./input-version/version).tgz ./crypto-material/cert.pem ./crypto-material/key.pem ./crypto-material/fullchain.pem
