terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.49.0"
    }
  }
  backend "s3" {
    bucket = "expense94-dev-tfstate"
    key    = "expense94-workspace" #you shold unique key name in bucket, same key should not be used in repos or another any files
    region = "us-east-1"
    use_lockfile = true

  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}