FROM yfix/mysql

#COPY docker /
COPY docker/etc/mysql/conf.d/override.cnf /etc/mysql/conf.d/override.cnf
COPY docker-entrypoint.sh /usr/local/bin/
