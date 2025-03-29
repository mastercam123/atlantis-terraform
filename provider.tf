terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">=5.83"
    }
    github = {
      source  = "integrations/github"
      version = ">=6.0"
    }
  }
}