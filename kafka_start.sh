#!/bin/bash

cd /opt/kafka

bin/zookeeper-server-start.sh config/zookeeper.properties > /opt/kafka/zookeeper_start.log 2>&1 &

sleep 5

bin/kafka-server-start.sh config/server.properties > /opt/kafka/kafka_start.log 2>&1 &
