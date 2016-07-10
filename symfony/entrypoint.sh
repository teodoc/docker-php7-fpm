#!/bin/bash

if [ ! -f "/etc/php/7.0/fpm/pool.d/www.conf" ]; then
	rm -f /etc/php/7.0/fpm/pool.d/www.conf
fi

cp /etc/php/7.0/fpm/pool.d/www.conf.dist /etc/php/7.0/fpm/pool.d/www.conf

echo -e "\n" >> /etc/php/7.0/fpm/pool.d/www.conf && printenv | grep ^SYMFONY | cut -d\= -f1 | xargs -i echo "env[{}] = \${}" >> /etc/php/7.0/fpm/pool.d/www.conf

exec "$@"