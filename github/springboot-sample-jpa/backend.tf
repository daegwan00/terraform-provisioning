terraform {
  required_version = ">= 1.0.0"

  backend "s3" {
    bucket         = "zerone-id-apnortheast2-tfstate"
    key            = "provisioning/github/springboot-sample-jpa/terraform.tfstate"
    region         = "ap-northeast-2"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}

