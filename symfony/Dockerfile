FROM fabianmartin/php7-fpm:latest

ADD entrypoint.sh /usr/local/bin/entrypoint.sh
RUN mv /etc/php/7.0/fpm/pool.d/www.conf /etc/php/7.0/fpm/pool.d/www.conf.dist \
	&& chmod 0755 /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
CMD /usr/sbin/php-fpm7.0 --nodaemonize

EXPOSE 9000