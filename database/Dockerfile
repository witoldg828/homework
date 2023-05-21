FROM postgres
ENV POSTGRES_DB auradb
ENV POSTGRES_USER aura
ENV POSTGRES_PASSWORD aurapassword
COPY newtable.sql /docker-entrypoint-initdb.d/
RUN chmod 644 /docker-entrypoint-initdb.d/newtable.sql

