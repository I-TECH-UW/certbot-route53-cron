FROM certbot/dns-route53:latest

# copy crontabs for root user
COPY cronjobs /etc/crontabs/root

# start crond with log level 8 in foreground, output to stderr
RUN ["crond", "-d", "8"]

ENTRYPOINT ["/entrypoint.sh"]