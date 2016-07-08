FROM yfix/mysql

ENV TMPFS_DIR=/opt/tmpfs
ENV TMPFS_SIZE=300

RUN apt-get update && apt-get -y install --no-install-recommends \
    psmisc \
    eatmydata \
  && apt-get autoremove -y \
  && apt-get clean -y \
  && rm -rf /usr/share/{doc,man}/* \
  && rm -rf /var/lib/apt/lists/*

COPY ./docker/ /

EXPOSE 3306

ENTRYPOINT ["/entrypoint.sh"]
CMD ["mysqld"]
