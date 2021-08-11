module "s3-bucket" {
  source  = "app.terraform.io/rainier-training/s3-bucket/aws"
  version = "2.2.0"

  bucket = "hashicat-s3-bucket"
  acl    = "private"

  versioning = {
    enabled = true
  }

  inputs = {
    bucket_prefix    = "${var.prefix}"  
  }
}