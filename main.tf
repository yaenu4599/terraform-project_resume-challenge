locals {
  general_tags = {
    ManagedBy = var.managedby
    Environment = var.environment
  }
}


module "s3" {
  source = "./modules/s3"

  general_tags = locals.common_tags
  environment = var.environment

  resume_bucket = var.resume_bucket
}