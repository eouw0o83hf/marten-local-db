docker build -t marten-postgres .
docker rm -f marten-db
docker run --name marten-db -e POSTGRES_PASSWORD=Password12! -p 5454:5432 -td marten-postgres

export marten_testing_database=Host=localhost\;Port=5454\;Database=marten_test\;Username=postgres\;Password=Password12!

echo Postgres with v8 has been started. In order to set the connection string environment variable, either run this script as '. ./startPostgres.sh' or run the following command:
echo "export marten_testing_database=Host=localhost\;Port=5454\;Database=marten_test\;Username=postgres\;Password=Password12!"
