FROM debian

RUN apt-get update -qq && \
    apt-get -y -qq install apache2 && \
    a2enmod proxy && \
    a2enmod proxy_http && \
    a2enmod cache_disk

COPY proxy.config /etc/apache2/sites-enabled/000-default.conf

CMD ["apachectl", "-DFOREGROUND"]
