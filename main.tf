# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  profile = "terraform-user"
}

# This stores the terraform state file in the specified s3 bucket
terraform {
  backend "s3" {
    bucket = "kingss3-terraform-remote-state"
    key    = "terraform.tfstate"
    region = "us-east-1"
    profile = "terraform-user"
  }
}
