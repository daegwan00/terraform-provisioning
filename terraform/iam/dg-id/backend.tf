terraform {
  required_version = ">= 1.0.0"

  backend "s3" {
    bucket         = "dg-id-apnortheast2-tfstate"
    key            = "provisioning/terraform/iam/dg-id/terraform.tfstate"
    region         = "ap-northeast-2"
    encrypt        = true
    dynamodb_table = "terraform-lock-table"
  }
}
