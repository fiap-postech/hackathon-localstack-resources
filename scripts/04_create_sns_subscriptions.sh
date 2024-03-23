#!/bin/bash

echo "########### Creating sns subscriptions ###########"
aws --endpoint-url=http://localhost:4566 sns subscribe --profile=localstack --topic-arn arn:aws:sns:us-east-1:000000000000:local-time-tracking-event-topic --protocol sqs --notification-endpoint arn:aws:sqs:us-east-1:000000000000:local-hackathon-time-sheet-time-tracking-event-queue --attributes RawMessageDelivery=true
chmod +x /etc/localstack/init/ready.d/05_create_s3.sh
