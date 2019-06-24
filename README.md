# Marten Local DB on Docker

This repository is intended to make it easier to develop [Marten](https://github.com/JasperFx/marten) locally by automating the database configuration in a container.

## Prerequisites

You need to have [Docker installed](https://www.docker.com/get-started).

## How to run 

Just execute `startPostgres.sh`. That's it!

Notes: Marten depends on an environment variable (`marten_testing_database`) to connect to the testing DB. In order to get this variable set correctly, you need to do one of these two things:

1. Run the start script as `. ./startPostgres.sh`, which allows the script to set global variables
2. Set `marten_testing_database` manually by executing

```
export marten_testing_database=Host=localhost\;Port=5454\;Database=marten_test\;Username=postgres\;Password=Password12!
```

## How to run on Windows

Just execute `startPostgres.cmd`. That's it!

Notes: Marten depends on an environment variable (`marten_testing_database`) to connect to the testing DB. In order to get this variable set correctly, you need to do one of these two things:

1. Run the start script as `. ./startPostgres.cmd`, which allows the script to set global variables
2. Set `marten_testing_database` manually by executing

```
SET marten_testing_database=Host=localhost\;Port=5454\;Database=marten_test\;Username=postgres\;Password=Password12!
```

## Script list

### `startPostgres`

Starts a docker container with PSQL 10 with PLV8. (Note that it regenerates the container every time, since that process is super fast and it allows the same workflow to be followed even if the `Dockerfile` changes.)

The image is named `marten-db`.

### `stopPostgres`

Stops the container running `marten-db`.

### `connectToPostgres`

In case you need to jump into a PSQL console to poke around at anything, this abstracts the connection syntax.
