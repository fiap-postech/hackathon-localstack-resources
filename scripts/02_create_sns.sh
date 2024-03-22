#!/bin/bash

echo "########### Creating sns topics ###########"
aws --endpoint-url=http://localhost:4566 sns create-topic --profile=localstack --name local-time-tracking-event-topic
