FROM fabianmartin/php7-cli

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -yqq \
	&& apt-get install -yqq \
	php7.0-fpm \
	&& cp /etc/php/7.0/cli/conf.d/timezone.ini /etc/php/7.0/fpm/conf.d/timezone.ini \
	&& apt-get clean \
	&& apt-get autoclean \
	&& rm -rf /var/lib/apt/lists/*

ADD www.conf /etc/php/7.0/fpm/pool.d/
RUN mkdir -p /run/php && chown www-data:www-data /run/php

CMD /usr/sbin/php-fpm7.0 --nodaemonize

EXPOSE 9000