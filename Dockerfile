FROM clkao/postgres-plv8:latest
COPY ./init.sql /docker-entrypoint-initdb.d/
