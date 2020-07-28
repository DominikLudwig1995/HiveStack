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

## UDF
* https://acadgild.com/blog/hive-udf-python

## Utils
* docker exec -u 0 -it hivedb bash
* docker-compose start

## MariaDB Fix
* ALTER DATABASE CHARACTER SET latin1

## Jenkins
* https://mike42.me/blog/2019-05-how-to-integrate-gitea-and-jenkins

## Monitoring
* http://0.0.0.0:3030/d/000000127/telegraf-system-dashboard?orgId=1&refresh=1m

## HDFS
* http://www.mtitek.com/tutorials/bigdata/hive/install.php
