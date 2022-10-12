FROM wordpress:6.0.2-php8.1

RUN apt update \
    && apt install -y openssh-server squid\
    && service ssh start \
    && service squid start

COPY sshd_config /etc/ssh/sshd_config
COPY squid.conf /etc/squid/squid.conf

COPY fix-ssh.sh /bin/fix-ssh
RUN chmod +x /bin/fix-ssh

RUN chsh www-data -s /bin/bash

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["apache2-foreground"]