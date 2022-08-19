FROM arm64v8/mysql:oracle

COPY ./docker-entrypoint.sh /usr/local/bin/
COPY ./config-file.cnf /
# RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
ENTRYPOINT ["docker-entrypoint.sh"]

EXPOSE 3306 33060
CMD ["mysqld"]