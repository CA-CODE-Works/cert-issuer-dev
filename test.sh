#!/bin/bash
echo "hello world"
bitcoin-cli getbalance
bitcoin-cli sendtoaddress $issuer 5
cert-issuer -c /etc/cert-issuer/conf.ini
rm /etc/cert-issuer/data/unsigned_certificates/*
echo "Certs Issued"

exit 0
