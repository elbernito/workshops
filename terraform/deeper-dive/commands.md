# Terraform
Here you find the common commands for Terraform and some shortcuts... :)

## Lifecycle
### Init and download dependencies
`terraform Init`

### Check if all is ok
`terraform plan`

### Apply code on production
`terraform apply`

### Destroy, take down production
`terraform Destroy`

## Shortcuts
### Apply and destroy with automaticly "yes"
`terraform apply -auto-approve`

`terraform destroy -auto-approve`

### Plan, apply and destroy with a secrets file
`terraform plan -var-file="secrets.tfvars"` 

`terraform apply -var-file="secrets.tfvars"` 

`terraform destroy -var-file="secrets.tfvars"` 

### Apply and destroy with all above
`terraform apply -auto-approve -var-file="secrets.tfvars"` 

`terraform destroy -auto-approve -var-file="secrets.tfvars"` 

## Logging (bash)
### Debug level
This enables the logging. When you want to change back, delete the variable or start a new bash

`export TF_LOG="DEBUG"`

### Where you wish the log file
`export TF_LOG_PATH="./.log/terraform.log"`