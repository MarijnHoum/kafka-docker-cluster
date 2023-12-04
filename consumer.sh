#!/usr/bin/env bash

KAFKA_BROKER=localhost:9094
TOPIC=test

kafkacat -C -v -J -b $KAFKA_BROKER -t $TOPIC
