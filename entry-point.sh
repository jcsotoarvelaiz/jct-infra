env
aws s3api head-object --bucket $JCT_STATE_BUCKET --key $JCT_STATE_KEY || not_exist=true
if [ $not_exist ]; then
  echo "it does not exist"
else
  echo "it exists"
  aws s3 cp s3://$JCT_STATE_BUCKET/$JCT_STATE_KEY .
fi

terraform version
terraform init
if [ "$JCT_TERRAFORM_OPERATION" == 'apply' ]; then
   terraform apply -auto-approve
fi
if [ "$JCT_TERRAFORM_OPERATION" == 'destroy' ]; then
   terraform destroy -auto-approve
fi
aws s3 cp terraform.tfstate s3://$JCT_STATE_BUCKET/$JCT_STATE_KEY
