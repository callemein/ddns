#!/bin/bash

DDNS_DOMAIN="on.fdesigner.eu"

#sudo docker run -it --rm --name certbot \
#            -v "$PWD/../letsencrypt/etc/:/etc/letsencrypt" \
#            -v "$PWD/../letsencrypt/lib:/var/lib/letsencrypt" \
#	    -e "ACME_CHALLENGE=true" \
#	    certbot/certbot \
#	    certonly --manual --force-renewal --agree-tos -m info@amps.be -d *.on.fdesigner.eu --preferred-challenges dns-01 --server https://acme-v02.api.letsencrypt.org/directory
sudo chown ubuntu:ubuntu -R ../letsencrypt/
cd .. && zip --symlink -ro letsencrypt.zip letsencrypt/
