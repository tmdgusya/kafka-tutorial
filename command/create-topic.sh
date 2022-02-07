#!/bin/bash

# 반드시 토픽이름을 shell 옆에 지정한다 sh create-topic.sh roach-topic

topicName=$1

if [ -z $topicName ]
then
    echo "토픽이름을 반드시 입력해주세요."
else
    sh ../kafka_2.12-2.3.0/bin/kafka-topics.sh \
--create \
--bootstrap-server localhost:9093 \
--partitions 1 \
--replication-factor 1 \
--config retention.ms=172800000 \
--topic $topicName
fi