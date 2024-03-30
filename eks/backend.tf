# Backend to store state files in S3 bucket
terraform {
  backend "s3" {
    bucket         = "ed-eos-terraform-state"
    key            = "eos/eks/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "eos_table"
  }
}