locals {
  general_tags = {
    ManagedBy = var.managedby
    Environment = var.environment
  }
}


module "s3" {
  source = "./modules/s3"

  general_tags = locals.general_tags
  environment = var.environment

  bucket_main = var.bucket_main
}