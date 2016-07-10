FROM fabianmartin/php7-fpm

RUN apt-get update -yqq \
	&& apt-get install -yqq git curl unzip \
	&& rm -rf /var/lib/apt/lists/* \
	&& curl -sS https://getcomposer.org/installer | php \
	&& mv composer.phar /usr/local/bin/composer