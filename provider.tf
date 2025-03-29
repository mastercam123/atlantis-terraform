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

provider "github" {
  owner           = var.github_organization
  id              = var.github_app_id
  installation_id = var.github_app_installation_id
  pem_file        = aws_secretmanager_secret_version.github_app_private_key.secret_string
}