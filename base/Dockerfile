FROM develar/java

ENV HADOOP_VERSION=2.7.1

RUN apk --update add ca-certificates curl jq gnupg tar bash && \
    eval $(gpg-agent --daemon) && \
    mkdir -p /hadoop /hadoop/logs && \
    cd /tmp && \
    MIRROR=`curl -sSL https://www.apache.org/dyn/closer.cgi\?as_json\=1 | jq -r '.preferred'` && \
    curl -sSLO "${MIRROR}/hadoop/common/hadoop-${HADOOP_VERSION}/hadoop-${HADOOP_VERSION}.tar.gz" && \
    curl -sSLO https://dist.apache.org/repos/dist/release/hadoop/common/hadoop-${HADOOP_VERSION}/hadoop-${HADOOP_VERSION}.tar.gz.asc && \
    curl -sSL  https://dist.apache.org/repos/dist/release/hadoop/common/KEYS | gpg -q --import - && \
    gpg -q --verify hadoop-${HADOOP_VERSION}.tar.gz.asc && \
    tar -zx -C /hadoop --strip-components=1 --no-same-owner -f hadoop-${HADOOP_VERSION}.tar.gz && \
    apk del curl jq gnupg tar && \
    cd /hadoop/share/hadoop && \
    ln -f ./mapreduce/lib/jersey-guice-1.9.jar          ./yarn/lib/jersey-guice-1.9.jar               && \
    ln -f ./mapreduce/lib/javax.inject-1.jar            ./yarn/lib/javax.inject-1.jar                 && \
    ln -f ./mapreduce/lib/guice-servlet-3.0.jar         ./yarn/lib/guice-servlet-3.0.jar              && \
    ln -f ./mapreduce/lib/guice-3.0.jar                 ./yarn/lib/guice-3.0.jar                      && \
    ln -f ./mapreduce/lib/aopalliance-1.0.jar           ./yarn/lib/aopalliance-1.0.jar                && \
    ln -f ./hdfs/lib/leveldbjni-all-1.8.jar             ./mapreduce/lib/leveldbjni-all-1.8.jar        && \
    ln -f ./hdfs/lib/leveldbjni-all-1.8.jar             ./yarn/lib/leveldbjni-all-1.8.jar             && \
    ln -f ./common/lib/zookeeper-3.4.6.jar              ./yarn/lib/zookeeper-3.4.6.jar                && \
    ln -f ./common/lib/xz-1.0.jar                       ./mapreduce/lib/xz-1.0.jar                    && \
    ln -f ./common/lib/xz-1.0.jar                       ./yarn/lib/xz-1.0.jar                         && \
    ln -f ./common/lib/xmlenc-0.52.jar                  ./hdfs/lib/xmlenc-0.52.jar                    && \
    ln -f ./common/lib/stax-api-1.0-2.jar               ./yarn/lib/stax-api-1.0-2.jar                 && \
    ln -f ./common/lib/snappy-java-1.0.4.1.jar          ./mapreduce/lib/snappy-java-1.0.4.1.jar       && \
    ln -f ./common/lib/servlet-api-2.5.jar              ./hdfs/lib/servlet-api-2.5.jar                && \
    ln -f ./common/lib/servlet-api-2.5.jar              ./yarn/lib/servlet-api-2.5.jar                && \
    ln -f ./common/lib/protobuf-java-2.5.0.jar          ./hdfs/lib/protobuf-java-2.5.0.jar            && \
    ln -f ./common/lib/protobuf-java-2.5.0.jar          ./mapreduce/lib/protobuf-java-2.5.0.jar       && \
    ln -f ./common/lib/protobuf-java-2.5.0.jar          ./yarn/lib/protobuf-java-2.5.0.jar            && \
    ln -f ./common/lib/paranamer-2.3.jar                ./mapreduce/lib/paranamer-2.3.jar             && \
    ln -f ./common/lib/netty-3.6.2.Final.jar            ./hdfs/lib/netty-3.6.2.Final.jar              && \
    ln -f ./common/lib/netty-3.6.2.Final.jar            ./mapreduce/lib/netty-3.6.2.Final.jar         && \
    ln -f ./common/lib/netty-3.6.2.Final.jar            ./yarn/lib/netty-3.6.2.Final.jar              && \
    ln -f ./common/lib/log4j-1.2.17.jar                 ./hdfs/lib/log4j-1.2.17.jar                   && \
    ln -f ./common/lib/log4j-1.2.17.jar                 ./mapreduce/lib/log4j-1.2.17.jar              && \
    ln -f ./common/lib/log4j-1.2.17.jar                 ./yarn/lib/log4j-1.2.17.jar                   && \
    ln -f ./common/lib/junit-4.11.jar                   ./mapreduce/lib/junit-4.11.jar                && \
    ln -f ./common/lib/jsr305-3.0.0.jar                 ./hdfs/lib/jsr305-3.0.0.jar                   && \
    ln -f ./common/lib/jsr305-3.0.0.jar                 ./yarn/lib/jsr305-3.0.0.jar                   && \
    ln -f ./common/lib/jetty-util-6.1.26.jar            ./hdfs/lib/jetty-util-6.1.26.jar              && \
    ln -f ./common/lib/jetty-util-6.1.26.jar            ./yarn/lib/jetty-util-6.1.26.jar              && \
    ln -f ./common/lib/jetty-6.1.26.jar                 ./hdfs/lib/jetty-6.1.26.jar                   && \
    ln -f ./common/lib/jetty-6.1.26.jar                 ./yarn/lib/jetty-6.1.26.jar                   && \
    ln -f ./common/lib/jettison-1.1.jar                 ./yarn/lib/jettison-1.1.jar                   && \
    ln -f ./common/lib/jersey-server-1.9.jar            ./hdfs/lib/jersey-server-1.9.jar              && \
    ln -f ./common/lib/jersey-server-1.9.jar            ./mapreduce/lib/jersey-server-1.9.jar         && \
    ln -f ./common/lib/jersey-server-1.9.jar            ./yarn/lib/jersey-server-1.9.jar              && \
    ln -f ./common/lib/jersey-json-1.9.jar              ./yarn/lib/jersey-json-1.9.jar                && \
    ln -f ./common/lib/jersey-core-1.9.jar              ./hdfs/lib/jersey-core-1.9.jar                && \
    ln -f ./common/lib/jersey-core-1.9.jar              ./mapreduce/lib/jersey-core-1.9.jar           && \
    ln -f ./common/lib/jersey-core-1.9.jar              ./yarn/lib/jersey-core-1.9.jar                && \
    ln -f ./common/lib/jaxb-impl-2.2.3-1.jar            ./yarn/lib/jaxb-impl-2.2.3-1.jar              && \
    ln -f ./common/lib/jaxb-api-2.2.2.jar               ./yarn/lib/jaxb-api-2.2.2.jar                 && \
    ln -f ./common/lib/jackson-xc-1.9.13.jar            ./yarn/lib/jackson-xc-1.9.13.jar              && \
    ln -f ./common/lib/jackson-mapper-asl-1.9.13.jar    ./hdfs/lib/jackson-mapper-asl-1.9.13.jar      && \
    ln -f ./common/lib/jackson-mapper-asl-1.9.13.jar    ./mapreduce/lib/jackson-mapper-asl-1.9.13.jar && \
    ln -f ./common/lib/jackson-mapper-asl-1.9.13.jar    ./yarn/lib/jackson-mapper-asl-1.9.13.jar      && \
    ln -f ./common/lib/jackson-jaxrs-1.9.13.jar         ./yarn/lib/jackson-jaxrs-1.9.13.jar           && \
    ln -f ./common/lib/jackson-core-asl-1.9.13.jar      ./hdfs/lib/jackson-core-asl-1.9.13.jar        && \
    ln -f ./common/lib/jackson-core-asl-1.9.13.jar      ./mapreduce/lib/jackson-core-asl-1.9.13.jar   && \
    ln -f ./common/lib/jackson-core-asl-1.9.13.jar      ./yarn/lib/jackson-core-asl-1.9.13.jar        && \
    ln -f ./common/lib/htrace-core-3.1.0-incubating.jar ./hdfs/lib/htrace-core-3.1.0-incubating.jar   && \
    ln -f ./common/lib/hamcrest-core-1.3.jar            ./mapreduce/lib/hamcrest-core-1.3.jar         && \
    ln -f ./common/lib/hadoop-annotations-2.7.1.jar     ./mapreduce/lib/hadoop-annotations-2.7.1.jar  && \
    ln -f ./common/lib/guava-11.0.2.jar                 ./hdfs/lib/guava-11.0.2.jar                   && \
    ln -f ./common/lib/guava-11.0.2.jar                 ./yarn/lib/guava-11.0.2.jar                   && \
    ln -f ./common/lib/commons-logging-1.1.3.jar        ./hdfs/lib/commons-logging-1.1.3.jar          && \
    ln -f ./common/lib/commons-logging-1.1.3.jar        ./yarn/lib/commons-logging-1.1.3.jar          && \
    ln -f ./common/lib/commons-lang-2.6.jar             ./hdfs/lib/commons-lang-2.6.jar               && \
    ln -f ./common/lib/commons-lang-2.6.jar             ./yarn/lib/commons-lang-2.6.jar               && \
    ln -f ./common/lib/commons-io-2.4.jar               ./hdfs/lib/commons-io-2.4.jar                 && \
    ln -f ./common/lib/commons-io-2.4.jar               ./mapreduce/lib/commons-io-2.4.jar            && \
    ln -f ./common/lib/commons-io-2.4.jar               ./yarn/lib/commons-io-2.4.jar                 && \
    ln -f ./common/lib/commons-compress-1.4.1.jar       ./mapreduce/lib/commons-compress-1.4.1.jar    && \
    ln -f ./common/lib/commons-compress-1.4.1.jar       ./yarn/lib/commons-compress-1.4.1.jar         && \
    ln -f ./common/lib/commons-collections-3.2.1.jar    ./yarn/lib/commons-collections-3.2.1.jar      && \
    ln -f ./common/lib/commons-codec-1.4.jar            ./hdfs/lib/commons-codec-1.4.jar              && \
    ln -f ./common/lib/commons-codec-1.4.jar            ./yarn/lib/commons-codec-1.4.jar              && \
    ln -f ./common/lib/commons-cli-1.2.jar              ./hdfs/lib/commons-cli-1.2.jar                && \
    ln -f ./common/lib/commons-cli-1.2.jar              ./yarn/lib/commons-cli-1.2.jar                && \
    ln -f ./common/lib/avro-1.7.4.jar                   ./mapreduce/lib/avro-1.7.4.jar                && \
    ln -f ./common/lib/asm-3.2.jar                      ./hdfs/lib/asm-3.2.jar                        && \
    ln -f ./common/lib/asm-3.2.jar                      ./mapreduce/lib/asm-3.2.jar                   && \
    ln -f ./common/lib/asm-3.2.jar                      ./yarn/lib/asm-3.2.jar                        && \
    ln -f ./common/lib/activation-1.1.jar               ./yarn/lib/activation-1.1.jar                 && \
    rm -rf \
      /tmp/* \
      /var/cache/apk/* \
      /root/.gnupg \
      /hadoop/bin/*.cmd \
      /hadoop/etc/*.cmd \
      /hadoop/include \
      /hadoop/libexec/*.cmd \
      /hadoop/sbin/*.cmd \
      /hadoop/share/doc \
      /hadoop/share/hadoop/*/sources \
      /hadoop/share/hadoop/*/*-tests.jar \
      /hadoop/share/hadoop/*/*-tests-*.jar \
      /hadoop/share/hadoop/*/*/*-tests.jar \
      /hadoop/share/hadoop/*/jdiff \
      /hadoop/share/hadoop/common/templates \
      /hadoop/share/hadoop/hdfs/templates \
      /hadoop/share/hadoop/httpfs \
      /hadoop/share/hadoop/kms \
      /hadoop/share/hadoop/tools

ENV PATH=/hadoop/bin:/hadoop/sbin:${PATH} \
    HADOOP_PREFIX=/hadoop \
    HADOOP_COMMON_HOME=/hadoop \
    HADOOP_HDFS_HOME=/hadoop \
    HADOOP_MAPRED_HOME=/hadoop \
    HADOOP_YARN_HOME=/hadoop \
    HADOOP_CONF_DIR=/hadoop/etc/hadoop \
    YARD_CONF_DIR=/hadoop/etc/hadoop
