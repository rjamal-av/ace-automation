terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = SLST-Aviatrix
    workspaces {
      name = "ace-automation"
    }
  }
  required_providers {
    aviatrix = {
      source  = "AviatrixSystems/aviatrix"
      version = "~> 3.1.0"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  required_version = ">= 1.2"
}
