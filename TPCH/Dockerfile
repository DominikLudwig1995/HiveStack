FROM openjdk:8-jdk-slim

WORKDIR /opt

# Hive
ENV HADOOP_HOME=/opt/hadoop-3.1.3
ENV HIVE_HOME=/opt/apache-hive-3.1.2-bin
ENV HADOOP_CLASSPATH=${HADOOP_HOME}/share/hadoop/tools/lib/aws-java-sdk-bundle-1.11.271.jar:${HADOOP_HOME}/share/hadoop/tools/lib/hadoop-aws-3.1.3.jar

# Utils
RUN apt-get update && \
    apt-get install vim python python3 procps git net-tools curl zip make gcc -y

RUN curl -L https://www-us.apache.org/dist/hive/hive-3.1.2/apache-hive-3.1.2-bin.tar.gz | tar zxf - && \
    curl -L https://www-us.apache.org/dist/hadoop/common/hadoop-3.1.3/hadoop-3.1.3.tar.gz | tar zxf - && \
    rm -f ${HIVE_HOME}/lib/guava-19.0.jar && \
    cp ${HADOOP_HOME}/share/hadoop/common/lib/guava-27.0-jre.jar ${HIVE_HOME}/lib/

RUN groupadd -r hive --gid=1000 && \
    useradd -r -g hive --uid=1000 -d ${HIVE_HOME} hive && \
    chown hive:hive -R ${HIVE_HOME} && \
    chmod 777 -R /tmp && \
    mkdir /tmp/hive && \
    chmod 777 -R /tmp/hive && \
    chown hive:hive -R /tmp/hive

COPY TPCH_DBGEN /opt/TPCH_DBGEN
COPY TPC-H_on_Hive /opt/TPC-H_on_Hive
COPY profile /root/.profile

COPY confs/hive-site.xml /opt/apache-hive-3.1.2-bin/conf/hive-site.xml
COPY confs/core-site.xml /opt/apache-hive-3.1.2-bin/conf/core-site.xml
COPY confs/hdfs-site.xml /opt/apache-hive-3.1.2-bin/conf/hdfs-site.xml

COPY confs/hdfs-site.xml /opt/hadoop-3.1.3/etc/hadoop/hdfs-site.xml
COPY confs/core-site.xml /opt/hadoop-3.1.3/etc/hadoop/core-site.xml
