# Docker Hive

## Installation
cd docker-hive

make

docker build -t hive-metastore  

docker run -e 10000:10000  hive-metastore  

## Connect
docker exec -u 0 -it $DOCKERID bash

/opt/apache-hive-3.1.2-bin/bin/hiveserver2

/opt/apache-hive-3.1.2-bin/beeline -u jdbc:hive2://

/opt/apache-hive-3.1.2-bin/beeline -u jdbc:hive2://localhost:10000

## UDF
https://acadgild.com/blog/hive-udf-python
