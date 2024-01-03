module "test_s3_bucket" {

  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "3.15.1"

  bucket = var.bucket_name
  versioning = {
    enabled = var.enable_versioning
  }
}

module "iampolicy" {
  source    = "tfe.karla-gabriel.sbx.hashidemos.io/kg-dev/iampolicy/aws"
  version   = "1.0.1"
  role_name = "kg-test-role"
}