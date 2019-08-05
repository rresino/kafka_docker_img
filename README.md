# Apache Kafka Docker Image

A friendly docker image of Apache Kafka for developers.

## Description 

This is a valid image to run a Kafka to play, this image contains a Zookeeper (required) and Kafka server (lastest version) as standalone.

## Usage

```bash
docker run -p 9090:9092 -p 2181:2181 rresino/kafka_docker_img
```

## Why ?

I can't find a docker image of kafka to test my developments in a easy way.

## Legal advise

This image was created for developers and test, and it is not ready for production environments.

## Another options

If this image don't like or it don't fix your requirements you can the following images:

- https://github.com/wurstmeister/kafka-docker
- https://github.com/spotify/docker-kafka
