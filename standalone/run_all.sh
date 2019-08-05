#!/bin/bash
echo "Running Zookeeper ..."
./bin/zookeeper-server-start.sh -daemon ./config/zookeeper.properties
echo "Wait please ..."
sleep 2
echo "Running Kafka ..."
./bin/kafka-server-start.sh ./config/server.properties