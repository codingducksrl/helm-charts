FROM wordpress:6.0.2-php8.1

RUN apt update \
    && apt install -y openssh-server squid\
    && service ssh start \
    && service squid start

COPY sshd_config /etc/ssh/sshd_config
COPY squid.conf /etc/squid/squid.conf

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["apache2-foreground"]