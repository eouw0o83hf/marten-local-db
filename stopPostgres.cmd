@echo off

docker stop marten-db
docker rm marten-db
docker image rm marten-postgres
