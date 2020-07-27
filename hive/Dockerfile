FROM openjdk:8u252-jre

WORKDIR /opt

# Hive
ENV HADOOP_HOME=/opt/hadoop-3.1.3
ENV HIVE_HOME=/opt/apache-hive-3.1.2-bin
ENV HADOOP_CLASSPATH=${HADOOP_HOME}/share/hadoop/tools/lib/aws-java-sdk-bundle-1.11.271.jar:${HADOOP_HOME}/share/hadoop/tools/lib/hadoop-aws-3.1.3.jar

RUN curl -L https://www-us.apache.org/dist/hive/hive-3.1.2/apache-hive-3.1.2-bin.tar.gz | tar zxf - && \
    curl -L https://www-us.apache.org/dist/hadoop/common/hadoop-3.1.3/hadoop-3.1.3.tar.gz | tar zxf - && \
    rm -f ${HIVE_HOME}/lib/guava-19.0.jar && \
    cp ${HADOOP_HOME}/share/hadoop/common/lib/guava-27.0-jre.jar ${HIVE_HOME}/lib/

COPY conf/hive-site.xml ${HIVE_HOME}/conf
COPY conf/profile ${HIVE_HOME}/.profile
COPY conf/hdfs-site.xml ${HADOOP_HOME}/etc/hadoop
COPY conf/core-site.xml ${HADOOP_HOME}/etc/hadoop

RUN groupadd -r hive --gid=1000 && \
    useradd -r -g hive --uid=1000 -d ${HIVE_HOME} hive && \
    chown hive:hive -R ${HIVE_HOME} && \
    chmod 777 -R /tmp

# Utils
RUN apt-get update && \
    apt-get install vim -y && \
    apt-get install python python3  -y && \
    apt-get install procps -y && \
    apt-get install net-tools -y

# MySQL
RUN  apt-get install -y libmariadb-java mariadb-client && \
    ln -s /usr/share/java/mariadb-java-client.jar ${HIVE_HOME}/lib/mariadb-java-client.jar

# Bugfix
RUN mkdir /tmp/hive && chmod 777 -R /tmp/hive && chown hive:hive -R /tmp/hive

# Usersettings
USER hive
WORKDIR $HIVE_HOME
EXPOSE 9083 10000

# Endpoint
ENTRYPOINT ["/bin/bash"]
CMD ["/opt/apache-hive-3.1.2-bin/bin/hiveserver2"]
