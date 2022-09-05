FROM arm64v8/mysql:oracle

COPY ./docker-entrypoint.sh /usr/local/bin/
COPY ./config-file.cnf /
ENTRYPOINT ["docker-entrypoint.sh"]

EXPOSE 3306 33060
CMD ["mysqld"]