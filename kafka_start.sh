#!/bin/bash

cd /opt/kafka

bin/zookeeper-server-start.sh config/zookeeper.properties &

sleep 5

bin/kafka-server-start.sh config/server.properties &
