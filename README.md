# Docker Hive

## Installation Hive
cd docker-hive

make && docker build -t hive-metastore  .

docker-compose up

## JDBC
/opt/apache-hive-3.1.2-bin/bin/hiveserver2

/opt/apache-hive-3.1.2-bin/bin/beeline -u jdbc:hive2://

/opt/apache-hive-3.1.2-bin/bin/beeline -u jdbc:hive2://localhost:10000

## UDF
https://acadgild.com/blog/hive-udf-python

## Utils
docker exec -u 0 -it docker-hive_hivedb_1 bash

## MariaDB Fix
ALTER DATABASE CHARACTER SET latin1
