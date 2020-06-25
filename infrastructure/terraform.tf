terraform {
  backend "s3" {
    bucket         = "petshop-state"
    key            = "state/terraform.tfstate"
    region         = "us-east-2"

    dynamodb_table = "petshop-remote-state-lock"
    encrypt        = true
  }
}
