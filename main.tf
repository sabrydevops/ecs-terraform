#!/url/bin/env terraform
######################################################################################################################################################
# Description: 
# Author: SabryTarek <sabry.tarek.qaops@gmail.com>
# Created At: 11/10/2023
# Updated At: 9/11/2023
######################################################################################################################################################
### TASKS ###
# - Use User Data to:
#   - Update the packge reposirories
#   - install docker
######################################################################################################################################################


# Terraform module to provision an Alibaba Cloud ECS instance
terraform { # Terraform related configs
  required_version = "1.6.4"
  # required_version = "1.6.4"

  # backend "s3" {
  # region         = "us-west-2"
  # bucket         = "<redacted>"
  # key            = "<redacted>"
  # dynamodb_table = "<redacted>"
  # }
  backend "local" { # We use local backend to keep it simple
    path = "terraform.tfstate" # The file where the Terraform states stores in
  }
  required_providers {
    alicloud = {
      source = "aliyun/alicloud"
      version = "1.212.0"
    }
  }
}