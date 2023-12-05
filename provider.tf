terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAYEZQQRMVYAOQ4P7Z"
  secret_key = "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"
}
