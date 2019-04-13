#!/bin/sh
set -e

cd ./crypto-material

credhub login
credhub set -t certificate -n $KEY --ca-file ca.pem --certificate cert.pem --private key.pem