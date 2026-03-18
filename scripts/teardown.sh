aws cloudformation delete-stack --stack-name "vpc-${ENV:-dev}" --region "${AWS_REGION:-eu-west-1}"
aws cloudformation wait stack-delete-complete --stack-name "vpc-${ENV:-dev}" --region "${AWS_REGION:-eu-west-1}"
echo "VPC stack deleted"