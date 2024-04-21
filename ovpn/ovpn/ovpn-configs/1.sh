#!/bin/bash
for file in *_udp.ovpn; do
   sed '/data-ciphers AES-256-CBC/d; /ignore-unknown-option block-outside-dns/d; /block-outside-dns/d' "$file" > "${file/_udp.ovpn/_udp.old_client.ovpn}"
done
