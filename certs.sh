#!/bin/sh

certbot certonly -n --agree-tos --email $EMAIL -d $ROOT_URL -d "*.$ROOT_URL" --dns-route53 --preferred-challenges=dns --cert-name=default