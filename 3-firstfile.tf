Create a folder in D:\Terraform 
Create a file Helloworld.tf
Open power shell go to D:\Terraform and run terraform init --This will initialize the terraform

In the Helloworld.tf we need to specify the below

As it is Aws provider terraform will understand its an aws provider and we need to provide credentials or we can provide profile or role_arn
https://registry.terraform.io/providers/hashicorp/aws/latest/docs

provider "aws" {
  region     = "us-west-2"
  access_key = "my-access-key"
  secret_key = "my-secret-key"
}

or

provider "aws" {
  shared_config_files      = ["/Users/tf_user/.aws/conf"]
  shared_credentials_files = ["/Users/tf_user/.aws/creds"]
  profile                  = "customprofile"
}

Add this code in helloworld.tf and run terraform plan you will see the result that aws provider log
