#!/bin/sh

# Renews PKCS12 cert and JKS Keystore
echo "Deleting existing PKCS12"
rm {{ pkcs12_keystore_path }}

echo "Recreating PKCS12"
openssl pkcs12 -export  \
  -in {{ x509_crt_path }} \
  -inkey {{ rsa_key_path }} \
  -out {{ pkcs12_keystore_path }} \
  -name {{ cert_cn }} \
  -password pass:{{ keystore_password }}
