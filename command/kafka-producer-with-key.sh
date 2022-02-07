#!/bin/bash

topicName=$1

sh ../kafka_2.12-2.3.0/bin/kafka-console-producer.sh \
--broker-list localhost:9093 \
--topic $topicName \
--property "parse.key=true" \
--property "key.separator=:"