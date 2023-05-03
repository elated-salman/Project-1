terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.65.0"
    }
  }
}


provider "aws" {
  profile    = "default"
  region     = "us-east-1"
  access_key = "AKIA55UV3TPWP3OVQJGU"
  secret_key = "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"
}