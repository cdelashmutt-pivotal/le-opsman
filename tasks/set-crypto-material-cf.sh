#!/bin/sh
set -e

cd ./crypto-material

credhub set -t certificate -n /concourse/main/properties_networking_poe_ssl_certs_0_certificate --root ca.pem --certificate cert.pem --private key.pem