FROM openjdk:8u212-jre-alpine

ENV SCALA_VERSION 2.12
ENV KAFKA_VERSION 2.3.0
ENV KAFKA_HOME /usr/local/kafka/

# Add bash
RUN apk add --update bash && rm -rf /var/cache/apk/*

# Get Kafka
RUN wget -q "http://us.mirrors.quenda.co/apache/kafka/$KAFKA_VERSION/kafka_$SCALA_VERSION-$KAFKA_VERSION.tgz" -O /tmp/kafka.tgz
RUN tar xfz /tmp/kafka.tgz -C /tmp && \
    rm /tmp/kafka.tgz
RUN mv "/tmp/kafka_${SCALA_VERSION}-${KAFKA_VERSION}/" ${KAFKA_HOME}

COPY run_all.sh ${KAFKA_HOME}

RUN chmod +x ${KAFKA_HOME}run_all.sh

# 2181 Zookeeper, 9092 Kafka
EXPOSE 2181 9092

WORKDIR ${KAFKA_HOME}

CMD ["sh", "./run_all.sh"]