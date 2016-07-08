FROM yfix/mysql

# COPY docker /
# COPY docker/etc/mysql/conf.d/override.cnf /etc/mysql/conf.d/override.cnf
# COPY docker-entrypoint.sh /usr/local/bin/

ADD tmpfs.cnf /etc/mysql/conf.d/tmpfs.cnf
RUN chmod 664 /etc/mysql/conf.d/tmpfs.cnf
ADD setup_and_run_tmpfs.sh /usr/local/bin/setup_and_run_tmpfs.sh
RUN chmod +x /usr/local/bin/setup_and_run_tmpfs.sh

EXPOSE 3306
CMD ["/usr/local/bin/setup_and_run_tmpfs.sh"]
