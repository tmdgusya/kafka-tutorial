#!/bin/bash

topicName=$1

sh ../kafka_2.12-2.3.0/bin/kafka-console-consumer.sh \
--bootstrap-server localhost:9092 \
--topic $topicName \
--property "print.key=true" \
--property "key.separator=:" \
--group hello-group \
--from-beginning