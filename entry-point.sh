terraform version
terraform init
terraform apply -auto-approve
git add terraform.tfstate 
git commit -m "Updating state"
git push origin master

