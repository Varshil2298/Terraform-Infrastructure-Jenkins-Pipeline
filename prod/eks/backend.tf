provider "aws" {
  region = "ap-south-1"
}

terraform {
  backend "s3" {
    bucket         = "terraform-remote-state-2467"
    region         = "ap-south-1"
    key            = "eks/terraform.tfstate"
  #  dynamodb_table = "Lock-Files"
    encrypt        = true
  }
} 