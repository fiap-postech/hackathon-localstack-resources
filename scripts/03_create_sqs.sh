#!/bin/bash

echo "########### Creating sqs queues ###########"
aws --endpoint-url=http://localhost:4566 sqs create-queue --profile=localstack --queue-name local-hackathon-time-sheet-time-tracking-event-queue
aws --endpoint-url=http://localhost:4566 sqs create-queue --profile=localstack --queue-name local-hackathon-time-sheet-request-queue
aws --endpoint-url=http://localhost:4566 sqs create-queue --profile=localstack --queue-name local-hackathon-time-sheet-notification-request-queue
