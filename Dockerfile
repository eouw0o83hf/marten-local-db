FROM pyramation/postgres-plv8
COPY ./init.sql /docker-entrypoint-initdb.d/
