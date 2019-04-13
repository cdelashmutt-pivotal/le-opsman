#!/bin/sh
set -e

cd ./crypto-material

credhub login
credhub set -t certificate -n $KEY --root ca.pem --certificate fullchain.pem --private key.pem