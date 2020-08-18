# Docker Hive

## Installation Hive
* cd docker-hive
* make && docker build -t hive-metastore  .
* docker-compose up
* source ${HIVE_HOME}/.profile

## JDBC
* /opt/apache-hive-3.1.2-bin/bin/hiveserver2
* /opt/apache-hive-3.1.2-bin/bin/beeline -u jdbc:hive2://
* /opt/apache-hive-3.1.2-bin/bin/beeline -u jdbc:hive2://localhost:10000

## Hive UI
* http://127.0.0.1:10002/
* http://127.0.0.1:10002/logs/hive.log

## UDF
* https://acadgild.com/blog/hive-udf-python

## Utils
* docker exec -u 0 -it hivedb bash
* docker-compose start

## MariaDB Fix
* ALTER DATABASE CHARACTER SET latin1

## Jenkins
* https://mike42.me/blog/2019-05-how-to-integrate-gitea-and-jenkins
* http://127.0.0.1:8081/login?from=%2F

## Monitoring
* http://0.0.0.0:3030/d/000000127/telegraf-system-dashboard?orgId=1&refresh=1m
* http://127.0.0.1:9000/#/containers

## HDFS
* http://www.mtitek.com/tutorials/bigdata/hive/install.php

## UDF Deployment
add jar /opt/apache-hive-3.1.2-bin/udf/similarity-0.0.1-SNAPSHOT.jar;
CREATE FUNCTION levenshtein AS 'edu.hda.se.LevenshteinDistance';
select levenshtein('123','123434535');

drop function sumint;
add jar /opt/apache-hive-3.1.2-bin/udf/similarity-0.0.1-SNAPSHOT.jar;
CREATE FUNCTION sumint AS 'edu.hda.se.SumInt';
select sumint(ts) from data.player;
select sumint(fname) from data.mytable4;
