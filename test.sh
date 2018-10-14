#!/bin/bash
echo "hello world"
bitcoin-cli getbalance
bitcoin-cli sendtoaddress $issuer 5
cert-issuer -c /etc/cert-issuer/conf.ini
echo "Certs Issued already"

exit 0
