FROM postgres
COPY newtable.sql /docker-entrypoint-initdb.d/
RUN chmod 644 /docker-entrypoint-initdb.d/newtable.sql

