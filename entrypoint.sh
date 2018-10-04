#!/bin/sh
set -e

if [ $(echo "$1" | cut -c1) = "-" ]; then
  echo "$0: assuming arguments for bitcoind"

  set -- bitcoind "$@"
fi

  mkdir -p "$BITCOIN_DATA"
  chmod 700 "$BITCOIN_DATA"
  chown -R bitcoin "$BITCOIN_DATA"

  echo "$0: setting data directory to $BITCOIN_DATA"

  set -- "$@" -datadir="$BITCOIN_DATA"

if [ "$1" = "bitcoind" ] || [ "$1" = "bitcoin-cli" ] || [ "$1" = "bitcoin-tx" ]; then  
echo
  exec gosu bitcoin "$@"
fi

# bitcoind -daemon --testnet
echo
exec "$@"
