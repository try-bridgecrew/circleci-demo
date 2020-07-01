resource "aws_s3_bucket" "data-bucket" {
  region        = "us-west-2"
  bucket        = "my-cool-website"
  force_destroy = true
  tags = {
    Name = "my-cool-website"
  }
  versioning {
    enabled = true
    mfa_delete = true
  }
  logging {
    target_bucket = "my-log-bucket"
    target_prefix = "log/"
  }
  acl           = "public"
}
