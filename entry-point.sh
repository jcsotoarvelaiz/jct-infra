aws s3api head-object --bucket $JCT_STATE_BUCKET --key $JCT_STATE_KEY || not_exist=true
if [ $not_exist ]; then
  echo "it does not exist"
else
  echo "it exists"
  aws s3 cp $JCT_STATE_BUCKET/$JCT_STATE_KEY .
fi

#terraform version
#terraform init
#terraform apply -auto-approve

env
aws s3 cp terraform.tfstate $JCT_STATE_BUCKET/$JCT_STATE_KEY
