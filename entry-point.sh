curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64-2.0.30.zip" -o "awscliv2.zip"
unzip awscliv2.zip
./aws/install
aws s3 cp JCT_STATE_LOCATION .
terraform version
terraform init
terraform apply -auto-approve
env
aws s3 cp terraform.tfstate $JCT_STATE_LOCATION
