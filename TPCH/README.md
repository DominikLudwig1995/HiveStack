# Docker Hive TPC-H

https://www.ibm.com/support/knowledgecenter/en/STXKQY_BDA_SHR/bl1bda_tpch.htm

## Sourcing
* source ${HIVE_HOME}/.profile

## JDBC
* /opt/apache-hive-3.1.2-bin/bin/beeline -u jdbc:hive2://hivedb:10000

## Generate Data
* docker run --network hadoop -it tpch bash
* cd /opt/TPCH_DBGEN/dbgen/
* make
* /opt/TPCH_DBGEN/dbgen/dbgen -s 5

## Upload Data to HDFS
* mv /opt/TPCH_DBGEN/dbgen/*.tbl /opt/TPC-H_on_Hive/data
* source /root/.profile
* ./opt/TPC-H_on_Hive/data/tpch_prepare_data.sh
* rm /opt/TPC-H_on_Hive/data/*.tbl

## Create Tables in Hive
* /opt/TPC-H_on_Hive/tpch_benchmark.sh
