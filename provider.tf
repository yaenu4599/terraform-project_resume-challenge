terraform {
    required_providers {
      aws = {
        source = "hashicorp/aws"
        version = "~> 6.0"
      }
    }
    required_version = "~> 1.16.0"   
}

provider "aws" {
    region = "eu-central-1"
}

terraform {
  backend "s3" {
    key          = "terraform/backend/resume_challange/terraform.tfstate"
    region       = "eu-central-1"
    encrypt      = true
    use_lockfile = true

  }
}