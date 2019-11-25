terraform {
  required_version = ">= 0.12"
}


provider "aws" {
  region = "us-east-1"
}


resource "aws_s3_bucket" "terraform_state" {
  
  bucket = "senai-agile-devops-br"

  versioning {
    enabled = false
  }

  #server_side_encryption_configuration {
  #  rule {
  #    apply_server_side_encryption_by_default {
  #      sse_algorithm = "AES256"
  #    }
  #  }
  #}

}
