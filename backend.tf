terraform {
  backend "s3" {
    bucket         = "544759079184-terraform-tfstate"
    key            = "lab1/terraform.tfstate"
    region         = "eu-central-1"
    dynamodb_table = "terraform-tfstate-lock"
  }
}