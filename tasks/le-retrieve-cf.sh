#!/bin/sh

cd ./crypto-material

/usr/local/bin/acme.sh --issue --dns dns_gd -d cf.grogscave.net -d *.cf.grogscave.net -d *.uaa.cf.grogscave.net -d *.login.cf.grogscave.net --cert-file cert.pem --key-file key.pem --ca-file ca.pem
