resource "aws_s3_bucket" "data" {

  bucket        = "${local.resource_prefix.value}-data"
  acl           = "private"
  force_destroy = true
  tags = {
    Name        = "${local.resource_prefix.value}-data"
    Environment = local.resource_prefix.value
  }

}
