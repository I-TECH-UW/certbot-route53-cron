FROM certbot/dns-route53:latest

# copy crontabs for root user
COPY cronjobs /etc/crontabs/root

ADD entrypoint.sh /entrypoint.sh
ADD certs.sh /certs.sh

RUN chmod u+x /entrypoint.sh /certs.sh

ENTRYPOINT ["/entrypoint.sh"]
