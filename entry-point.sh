aws s3 cp JCT_STATE_LOCATION .
terraform version
terraform init
terraform apply -auto-approve
env
aws s3 cp terraform.tfstate $JCT_STATE_LOCATION
