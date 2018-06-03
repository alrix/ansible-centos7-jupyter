#!/bin/sh

# Cleanup and recreate certificates
rm /etc/jupyter/server.crt
rm /etc/jupyter/server.key
cp /etc/pki/tls/certs/server.crt /etc/jupyter/server.crt
cp /etc/pki/tls/private/server.key /etc/jupyter/server.key
chown jupyter:jupyter /etc/jupyter/server.crt
chown jupyter:jupyter /etc/jupyter/server.key
chmod 0644 /etc/jupyter/server.crt
chmod 0600 /etc/jupyter/server.key

# Restart the notebook server
service jupyter-notebook restart
