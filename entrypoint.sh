#!/bin/sh

certbot certonly -n --agree-tos --email pmanko@uw.edu -d $ROOT_URL -d "*.$ROOT_URL" --dns-route53 --preferred-challenges=dns