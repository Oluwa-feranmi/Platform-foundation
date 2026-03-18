#!/bin/bash
set -euo pipefail

STACK_NAME="vpc-${ENV:-dev}"
REGION="${AWS_DEFAULT_REGION:-eu-west-1}"
echo "Creating stack ${STACK_NAME} to ${REGION}"
aws cloudformation create-stack \
    --template-body file://templates/networking/vpc-baseline.yml \
    --stack-name $STACK_NAME \
    --capabilities CAPABILITY_IAM CAPABILITY_NAMED_IAM \
    --region $REGION

echo "Done. Check: aws cloudformation describe-stacks --stack-name $STACK_NAME --region $REGION"