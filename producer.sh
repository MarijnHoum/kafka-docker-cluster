#!/usr/bin/env bash

KAFKA_BROKER=localhost:9094
TOPIC=test

while true ; do
    uuid | kafkacat -P -b $KAFKA_BROKER -t $TOPIC
    sleep 0.1
    echo -n .
done
